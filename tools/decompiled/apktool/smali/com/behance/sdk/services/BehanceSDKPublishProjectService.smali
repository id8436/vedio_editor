.class public Lcom/behance/sdk/services/BehanceSDKPublishProjectService;
.super Landroid/app/IntentService;
.source "BehanceSDKPublishProjectService.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final FIELDS_KEY:Ljava/lang/String; = "fields"

.field public static final INTENT_EXTRA_PARAMS:Ljava/lang/String; = "INTENT_EXTRA_PARAMS"

.field private static final LICENSE_KEY:Ljava/lang/String; = "license"

.field private static final MATURE_CONTENT_KEY:Ljava/lang/String; = "mature_content"

.field private static final MODULE_EMBED_KEY:Ljava/lang/String; = "html"

.field private static final MODULE_IMAGE_KEY:Ljava/lang/String; = "image"

.field private static final MODULE_TYPE_EMBED_VALUE:Ljava/lang/String; = "embed"

.field private static final MODULE_TYPE_IMAGE_VALUE:Ljava/lang/String; = "image"

.field private static final MODULE_TYPE_KEY:Ljava/lang/String; = "type"

.field private static final PROJECTID_KEY:Ljava/lang/String; = "{project_id}"

.field private static final PUBLISHED:Ljava/lang/String; = "1"

.field private static final PUBLISHED_KEY:Ljava/lang/String; = "published"

.field private static final TAGS_KEY:Ljava/lang/String; = "tags"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static final TWITTER_UPDATE_API_URL:Ljava/lang/String; = "https://api.twitter.com/1.1/statuses/update.json?status="

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private activePublishRequestId:Ljava/lang/String;

.field private behanceSDK:Lcom/behance/sdk/BehanceSDK;

.field private projectBinder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

.field private sdkUserManager:Lcom/behance/sdk/managers/BehanceSDKUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "Behance Publish Project Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/services/BehanceSDKPublishProjectService;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;II)I
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->convertModuleUploadProgressPercentage(Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/behance/sdk/services/BehanceSDKPublishProjectService;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    return-void
.end method

.method static synthetic access$300(Lcom/behance/sdk/services/BehanceSDKPublishProjectService;)Z
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v0

    return v0
.end method

.method private broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V
    .locals 2

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->getProgressState()Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    if-ne v0, v1, :cond_2

    .line 650
    const-string/jumbo v0, "Publish Success"

    const-string/jumbo v1, "Behance-Project"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackSharingAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.behance.sdk.INTENT_ACTION_PROJECT_PUBLISH_STATUS_BROADCAST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    const-string/jumbo v1, "com.behance.sdk.INTENT_EXTRA_OBJ_KEY_PROJECT_PUBLISH_STATUS_BROADCAST_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 658
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->activePublishRequestId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setPublishRequestId(Ljava/lang/String;)V

    .line 661
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 663
    :cond_1
    return-void

    .line 652
    :cond_2
    invoke-virtual {p1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->getProgressState()Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-result-object v0

    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    if-ne v0, v1, :cond_0

    .line 653
    const-string/jumbo v0, "Publish Failure"

    const-string/jumbo v1, "Behance-Project"

    invoke-static {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSDKReporter;->trackSharingAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private broadcastUploadCancelledStatusUpdate()V
    .locals 3

    .prologue
    .line 636
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Publish Project cancelled. Broadcasting message"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    new-instance v0, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;-><init>()V

    .line 638
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->activePublishRequestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setPublishRequestId(Ljava/lang/String;)V

    .line 639
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->CANCEL_PUBLISH_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 640
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->CANCEL_PUBLISH_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressPercentage(I)V

    .line 641
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.behance.sdk.INTENT_ACTION_PROJECT_PUBLISH_STATUS_BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    const-string/jumbo v2, "com.behance.sdk.INTENT_EXTRA_OBJ_KEY_PROJECT_PUBLISH_STATUS_BROADCAST_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 643
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 644
    return-void
.end method

.method private cleanupCreativeCloudResources(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/project/modules/ProjectModule;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/project/modules/ProjectModule;

    .line 544
    invoke-interface {v0}, Lcom/behance/sdk/project/modules/ProjectModule;->getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-result-object v2

    sget-object v3, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->CREATIVECLOUD_ASSET:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    if-ne v2, v3, :cond_0

    .line 545
    invoke-interface {v0}, Lcom/behance/sdk/project/modules/ProjectModule;->deleteFromFileSystem()V

    goto :goto_0

    .line 548
    :cond_1
    return-void
.end method

.method private convertModuleUploadProgressPercentage(Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;II)I
    .locals 3

    .prologue
    .line 712
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PROJECT_DRAFT_CREATION_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-direct {p0, v0, p1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I

    move-result v0

    .line 713
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->MODULES_UPLOAD_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-direct {p0, v1, p1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I

    move-result v1

    .line 714
    sub-int/2addr v1, v0

    .line 715
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getProjectModules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v1, v2

    .line 716
    add-int/lit8 v2, p2, -0x1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    mul-int/2addr v1, p3

    div-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    .line 718
    return v0
.end method

.method private createNotifyIntent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    return-object v0
.end method

.method private createPendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 298
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private deleteProject(Ljava/lang/String;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 667
    :try_start_0
    const-string/jumbo v0, "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}"

    invoke-static {v0, p3}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 668
    const-string/jumbo v1, "{project_id}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->sdkUserManager:Lcom/behance/sdk/managers/BehanceSDKUserManager;

    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 670
    if-eqz v1, :cond_0

    .line 671
    const-string/jumbo v2, "access_token"

    invoke-static {v0, v2, v1}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_0
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpDeleteRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_0
    return-void

    .line 675
    :catch_0
    move-exception v0

    .line 676
    sget-object v1, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem deleting project"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I
    .locals 5

    .prologue
    const/16 v1, 0x50

    const/16 v0, 0x5a

    .line 723
    const/4 v2, 0x0

    .line 724
    sget-object v3, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$1;->$SwitchMap$com$behance$sdk$enums$BehanceSDKPublishProjectProgressState:[I

    invoke-virtual {p1}, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 765
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 726
    :pswitch_1
    const/16 v0, 0xa

    .line 727
    goto :goto_0

    .line 730
    :pswitch_2
    const/16 v0, 0x14

    .line 731
    goto :goto_0

    .line 734
    :pswitch_3
    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->isShareOnFacebook()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->isShareOnTwitter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 735
    const/16 v0, 0x46

    goto :goto_0

    .line 736
    :cond_1
    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->isShareOnFacebook()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->isShareOnTwitter()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 737
    goto :goto_0

    .line 745
    :pswitch_4
    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->isShareOnTwitter()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 746
    goto :goto_0

    .line 761
    :pswitch_5
    const/16 v0, 0x64

    goto :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private handleCancelAfterSuccessfulUpload(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)V
    .locals 5

    .prologue
    .line 681
    new-instance v1, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;

    invoke-direct {v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;-><init>()V

    .line 682
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->activePublishRequestId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setPublishRequestId(Ljava/lang/String;)V

    .line 683
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->CANCEL_PUBLISH_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 684
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->CANCEL_PUBLISH_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-direct {p0, v0, p2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressPercentage(I)V

    .line 687
    :try_start_0
    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getProjectModules()Ljava/util/List;

    move-result-object v0

    .line 688
    invoke-direct {p0, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->cleanupCreativeCloudResources(Ljava/util/List;)V

    .line 690
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 691
    const-string/jumbo v2, "clientId"

    invoke-virtual {p2}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getAppClientId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string/jumbo v2, "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}"

    invoke-static {v2, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 693
    const-string/jumbo v2, "{project_id}"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 695
    iget-object v2, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->sdkUserManager:Lcom/behance/sdk/managers/BehanceSDKUserManager;

    invoke-virtual {v2}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 696
    if-eqz v2, :cond_0

    .line 697
    const-string/jumbo v3, "access_token"

    invoke-static {v0, v3, v2}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 699
    :cond_0
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpDeleteRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.behance.sdk.INTENT_ACTION_PROJECT_PUBLISH_STATUS_BROADCAST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 706
    const-string/jumbo v2, "com.behance.sdk.INTENT_EXTRA_OBJ_KEY_PROJECT_PUBLISH_STATUS_BROADCAST_DATA"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 707
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 708
    return-void

    .line 700
    :catch_0
    move-exception v0

    .line 701
    sget-object v2, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem deleting project after cancel request"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    sget-object v2, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->CANCEL_PUBLISH_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {v1, v2}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 703
    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isActiveUploadCancelled()Z
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->projectBinder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->projectBinder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->activePublishRequestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;->isUploadCancelled(Ljava/lang/String;)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private publishOnFacebook(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 553
    :try_start_0
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 554
    if-eqz v1, :cond_1

    .line 555
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 556
    const-string/jumbo v0, "name"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string/jumbo v0, "link"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 561
    const-string/jumbo v2, "picture"

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_0
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string/jumbo v2, "me/feed"

    sget-object v4, Lcom/facebook/at;->b:Lcom/facebook/at;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/at;Lcom/facebook/ai;)V

    .line 564
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->i()Lcom/facebook/as;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lcom/facebook/as;->a()Lcom/facebook/s;

    move-result-object v0

    .line 566
    if-eqz v0, :cond_2

    .line 569
    sget-object v1, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem sharing Project on Facebook [Message - %s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/facebook/s;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    invoke-virtual {v0}, Lcom/facebook/s;->e()Ljava/lang/String;

    move-result-object v0

    .line 571
    sget-object v1, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem sharing Project on Facebook [Message - %s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->SHARE_ON_FACEBOOK_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {p3, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 573
    invoke-virtual {p3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setReasonPhrase(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->getProgressState()Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressPercentage(I)V

    .line 585
    invoke-direct {p0, p3}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 586
    return-void

    .line 575
    :cond_2
    :try_start_1
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Successfully shared Project on Facebook"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->SHARE_ON_FACEBOOK_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {p3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 579
    :catch_0
    move-exception v0

    .line 580
    sget-object v1, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Problem sharing Project on Facebook"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 581
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->SHARE_ON_FACEBOOK_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {p3, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 582
    invoke-virtual {p3, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private publishOnTwitter(Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 592
    :try_start_0
    new-instance v4, Loauth/signpost/basic/DefaultOAuthConsumer;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getTwitterConsumerKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getTwitterConsumerSecret()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Loauth/signpost/basic/DefaultOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getTwitterUserAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getTwitterUserAccessTokenSecret()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    sget v0, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_publish_on_twitter_msg:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->getProjectUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 595
    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://api.twitter.com/1.1/statuses/update.json?status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 598
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getTwitterUserAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v0

    .line 599
    sget-object v2, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Share on Twitter URL is [URL - %s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v1

    .line 602
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 603
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Successfully shared Project on Twitter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/behance/sdk/logger/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    sget-object v0, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->SHARE_ON_TWITTER_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {p2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_0
    invoke-virtual {p2}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->getProgressState()Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressPercentage(I)V

    .line 624
    invoke-direct {p0, p2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 625
    return-void

    .line 605
    :cond_0
    const/16 v2, 0x191

    if-ne v1, v2, :cond_1

    .line 606
    :try_start_1
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 607
    sget-object v2, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Twitter User token has been revoked. [Error code - %s - message - %s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->unlinkTwitterAccount()V

    .line 609
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->SHARE_ON_TWITTER_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {p2, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 610
    invoke-virtual {p2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setReasonPhrase(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    sget-object v1, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v2, "Error sharing Project on Twitter"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 620
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->SHARE_ON_TWITTER_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {p2, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 621
    invoke-virtual {p2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 612
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 613
    sget-object v2, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Error sharing Project on Twitter. [Error code - %s - message - %s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-interface {v2, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->SHARE_ON_TWITTER_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {p2, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 615
    invoke-virtual {p2, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setReasonPhrase(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method private publishProjectOnServer(Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;
    .locals 23

    .prologue
    .line 310
    new-instance v12, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;

    invoke-direct {v12}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;-><init>()V

    .line 311
    new-instance v16, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;

    invoke-direct/range {v16 .. v16}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;-><init>()V

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getProjectTitle()Ljava/lang/String;

    move-result-object v17

    .line 313
    invoke-virtual/range {v16 .. v17}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->setProjectTitle(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setPublishedProject(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;)V

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getProjectModules()Ljava/util/List;

    move-result-object v18

    .line 319
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProjectTitle(Ljava/lang/String;)V

    .line 320
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_STARTED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 321
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_STARTED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I

    move-result v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressPercentage(I)V

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 324
    const/4 v9, 0x0

    .line 325
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 326
    const-string/jumbo v3, "clientId"

    invoke-virtual/range {p1 .. p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getAppClientId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :try_start_0
    const-string/jumbo v3, "{server_root_url}/v2/project/editor?{key_client_id_param}={clientId}"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v4

    .line 331
    invoke-virtual {v4}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v20

    .line 332
    if-eqz v20, :cond_15

    .line 333
    const-string/jumbo v4, "access_token"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 337
    :goto_0
    new-instance v3, Lcom/behance/sdk/network/BehanceMultipartEntity;

    invoke-direct {v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;-><init>()V

    .line 338
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/behance/sdk/network/BehanceMultipartEntity;->setChunked(Z)V

    .line 339
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getProjectCoverImageByteArray()[B

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 340
    const-string/jumbo v4, "image"

    invoke-virtual/range {p1 .. p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getProjectCoverImageFileName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "application/octet-stream"

    const-string/jumbo v7, "binary"

    invoke-virtual/range {v3 .. v8}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addImagePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayInputStream;)V

    .line 343
    const-string/jumbo v4, "title"

    const-string/jumbo v5, "text/plain; charset=UTF-8"

    const-string/jumbo v6, "8bit"

    const-string/jumbo v7, "UTF-8"

    .line 344
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 343
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 346
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v10, v3, v5, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v4

    .line 348
    invoke-virtual {v4}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc9

    if-eq v3, v5, :cond_0

    .line 350
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 351
    invoke-virtual {v4}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setReasonPhrase(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->cleanupCreativeCloudResources(Ljava/util/List;)V

    .line 355
    sget-object v3, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;->CREATION_FAILED:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setStatus(Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;)V

    .line 356
    invoke-virtual {v4}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setReasonPhrase(Ljava/lang/String;)V

    move-object v3, v12

    .line 539
    :goto_1
    return-object v3

    .line 361
    :cond_0
    invoke-virtual {v4}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 363
    const-string/jumbo v3, "project"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 364
    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 365
    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->setProjectId(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->setProjectUrl(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProjectId(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProjectUrl(Ljava/lang/String;)V

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 373
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->handleCancelAfterSuccessfulUpload(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)V

    .line 374
    sget-object v3, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;->CANCELLED:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setStatus(Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;)V

    move-object v3, v12

    .line 375
    goto :goto_1

    .line 378
    :cond_1
    sget-object v4, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PROJECT_DRAFT_CREATION_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 379
    sget-object v4, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PROJECT_DRAFT_CREATION_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressPercentage(I)V

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 382
    const-string/jumbo v4, "covers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 383
    if-eqz v3, :cond_2

    .line 384
    const-string/jumbo v4, "202"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    const-string/jumbo v5, "404"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 386
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->setProjectImageUrl(Ljava/lang/String;)V

    .line 387
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 388
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProjectCoverImageUrl(Ljava/lang/String;)V

    .line 394
    :cond_2
    :goto_2
    const-string/jumbo v3, "{server_root_url}/v2/project/editor/{project_id}/modules?{key_client_id_param}={clientId}"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 395
    const-string/jumbo v4, "{project_id}"

    invoke-virtual {v3, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 396
    if-eqz v20, :cond_14

    .line 397
    const-string/jumbo v4, "access_token"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    .line 402
    :goto_3
    const/4 v9, 0x0

    .line 403
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/behance/sdk/project/modules/ProjectModule;

    move-object v11, v0

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->handleCancelAfterSuccessfulUpload(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)V

    .line 407
    sget-object v3, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;->CANCELLED:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setStatus(Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;)V

    move-object v3, v12

    .line 408
    goto/16 :goto_1

    .line 390
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProjectCoverImageUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 520
    :catch_0
    move-exception v3

    move-object v4, v13

    .line 521
    :goto_4
    sget-object v5, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v6, "Problem publishing project"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v3, v6, v7}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->cleanupCreativeCloudResources(Ljava/util/List;)V

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->handleCancelAfterSuccessfulUpload(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)V

    .line 525
    sget-object v3, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;->CANCELLED:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setStatus(Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;)V

    move-object v3, v12

    .line 526
    goto/16 :goto_1

    .line 410
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 411
    :try_start_2
    invoke-interface {v11}, Lcom/behance/sdk/project/modules/ProjectModule;->getType()Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-result-object v22

    .line 413
    new-instance v3, Lcom/behance/sdk/network/BehanceMultipartEntity;

    invoke-direct {v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;-><init>()V

    .line 414
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/behance/sdk/network/BehanceMultipartEntity;->setChunked(Z)V

    .line 415
    const/4 v5, 0x0

    .line 416
    sget-object v4, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->IMAGE:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-object/from16 v0, v22

    if-eq v0, v4, :cond_6

    sget-object v4, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->CREATIVECLOUD_ASSET:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_8

    .line 417
    :cond_6
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "text/plain; charset=UTF-8"

    const-string/jumbo v6, "8bit"

    new-instance v7, Ljava/lang/String;

    const-string/jumbo v8, "image"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "ISO-8859-1"

    .line 418
    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 417
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 419
    move-object v0, v11

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/behance/sdk/project/modules/ImageModule;->getFileForUpload()Ljava/io/File;

    move-result-object v10

    .line 421
    const-string/jumbo v4, "image"

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "application/octet-stream"

    const-string/jumbo v7, "binary"

    .line 422
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 421
    invoke-virtual/range {v3 .. v8}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addImagePart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v10

    .line 433
    :goto_5
    new-instance v8, Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;

    invoke-direct {v8}, Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;-><init>()V

    .line 434
    new-instance v4, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v4 .. v10}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService$ProjectModuleUploadEntityWrapperCallback;-><init>(Lcom/behance/sdk/services/BehanceSDKPublishProjectService;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;ILcom/behance/sdk/services/BehanceSDKPublishProjectService$1;)V

    .line 436
    invoke-virtual {v3, v4}, Lcom/behance/sdk/network/BehanceMultipartEntity;->setBehanceHttpEntityWrapperCallback(Lcom/behance/sdk/network/BehanceMultipartEntityWrapper;)V

    .line 438
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v15, v3, v8, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPostRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v4

    .line 441
    sget-object v3, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->IMAGE:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-object/from16 v0, v22

    if-ne v0, v3, :cond_a

    move-object v0, v11

    check-cast v0, Lcom/behance/sdk/project/modules/ImageModule;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/behance/sdk/project/modules/ImageModule;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 442
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 446
    :cond_7
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 447
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->handleCancelAfterSuccessfulUpload(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)V

    .line 448
    sget-object v3, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;->CANCELLED:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setStatus(Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;)V

    move-object v3, v12

    .line 449
    goto/16 :goto_1

    .line 424
    :cond_8
    sget-object v4, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->EMBED:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-object/from16 v0, v22

    if-ne v0, v4, :cond_9

    .line 425
    const-string/jumbo v4, "type"

    const-string/jumbo v6, "text/plain; charset=ISO-8859-1"

    const-string/jumbo v7, "8bit"

    new-instance v8, Ljava/lang/String;

    const-string/jumbo v10, "embed"

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "ISO-8859-1"

    .line 426
    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 425
    invoke-virtual {v3, v4, v6, v7, v8}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 428
    move-object v0, v11

    check-cast v0, Lcom/behance/sdk/project/modules/EmbedModule;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/behance/sdk/project/modules/EmbedModule;->getEmbedContent()Ljava/lang/String;

    move-result-object v4

    .line 429
    const-string/jumbo v6, "html"

    const-string/jumbo v7, "application/xhtml+xml; charset=ISO-8859-1"

    const-string/jumbo v8, "8bit"

    const-string/jumbo v10, "ISO-8859-1"

    .line 430
    invoke-virtual {v4, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 429
    invoke-virtual {v3, v6, v7, v8, v4}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_9
    move-object v14, v5

    goto/16 :goto_5

    .line 443
    :cond_a
    sget-object v3, Lcom/behance/sdk/project/modules/ProjectModuleTypes;->CREATIVECLOUD_ASSET:Lcom/behance/sdk/project/modules/ProjectModuleTypes;

    move-object/from16 v0, v22

    if-ne v0, v3, :cond_7

    .line 444
    invoke-interface {v11}, Lcom/behance/sdk/project/modules/ProjectModule;->deleteFromFileSystem()V

    goto :goto_6

    .line 451
    :cond_b
    invoke-virtual {v4}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc9

    if-eq v3, v5, :cond_3

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->deleteProject(Ljava/lang/String;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Ljava/util/Map;)V

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->cleanupCreativeCloudResources(Ljava/util/List;)V

    .line 455
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 456
    invoke-virtual {v4}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setReasonPhrase(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 459
    sget-object v3, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;->MODULE_ADD_FAILED:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setStatus(Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;)V

    .line 460
    invoke-virtual {v12, v11}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setFailedMoudle(Lcom/behance/sdk/project/modules/ProjectModule;)V

    .line 461
    invoke-virtual {v4}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setReasonPhrase(Ljava/lang/String;)V

    move-object v3, v12

    .line 462
    goto/16 :goto_1

    .line 467
    :cond_c
    const-string/jumbo v3, "{server_root_url}/v2/project/editor/{project_id}?{key_client_id_param}={clientId}"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->getUrlFromTemplate(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 468
    const-string/jumbo v4, "{project_id}"

    invoke-virtual {v3, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 469
    if-eqz v20, :cond_13

    .line 470
    const-string/jumbo v4, "access_token"

    .line 471
    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Lcom/behance/sdk/util/BehanceSDKUrlUtil;->appendQueryStringParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 474
    :goto_7
    new-instance v5, Lcom/behance/sdk/network/BehanceMultipartEntity;

    invoke-direct {v5}, Lcom/behance/sdk/network/BehanceMultipartEntity;-><init>()V

    .line 475
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->setBrowserCompatible(Z)V

    .line 476
    const-string/jumbo v3, "title"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v3, v6, v7, v8}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getProjectCreativeFields()Ljava/lang/String;

    move-result-object v3

    .line 479
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 480
    const-string/jumbo v6, "fields"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 482
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getProjectTags()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 484
    const-string/jumbo v6, "tags"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 487
    :cond_e
    const-string/jumbo v3, "description"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getProjectDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v3, v6, v7, v8}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 488
    const-string/jumbo v3, "license"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getProjectCopyright()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v3, v6, v7, v8}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 491
    const-string/jumbo v3, ""

    .line 492
    invoke-virtual/range {p1 .. p1}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->isProjectContainsAdultContent()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 493
    const-string/jumbo v3, "1"

    .line 497
    :goto_8
    const-string/jumbo v6, "mature_content"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 498
    const-string/jumbo v3, "published"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "1"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v3, v6, v7, v8}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 500
    invoke-static {}, Lcom/behance/sdk/network/BehanceHttpsConnection;->getInstance()Lcom/behance/sdk/network/BehanceHttpsConnection;

    move-result-object v3

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/behance/sdk/network/BehanceHttpsConnection;->invokeHttpPutRequest(Ljava/lang/String;Lcom/behance/sdk/network/BehanceMultipartEntity;Lcom/behance/sdk/network/BehanceRequestCancellationWrapper;Ljava/lang/String;)Lcom/behance/sdk/network/BehanceConnectionResponse;

    move-result-object v4

    .line 503
    invoke-virtual {v4}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_10

    .line 504
    sget-object v3, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;->SUCCESS:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setStatus(Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;)V

    .line 506
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->MODULES_UPLOAD_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 507
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->MODULES_UPLOAD_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I

    move-result v3

    .line 507
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressPercentage(I)V

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    :goto_9
    move-object v3, v12

    .line 539
    goto/16 :goto_1

    .line 495
    :cond_f
    const-string/jumbo v3, "0"

    goto :goto_8

    .line 511
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v13, v1, v2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->deleteProject(Ljava/lang/String;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Ljava/util/Map;)V

    .line 513
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 514
    invoke-virtual {v4}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setReasonPhrase(Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 517
    sget-object v3, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;->PUBLISH_FAILED:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setStatus(Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;)V

    .line 518
    invoke-virtual {v4}, Lcom/behance/sdk/network/BehanceConnectionResponse;->getResponseObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setReasonPhrase(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    .line 528
    :cond_11
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 529
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->deleteProject(Ljava/lang/String;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Ljava/util/Map;)V

    .line 531
    :cond_12
    sget-object v4, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_FAILED:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 532
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setException(Ljava/lang/Throwable;)V

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 535
    sget-object v4, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;->EXCEPTION:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    invoke-virtual {v12, v4}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setStatus(Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;)V

    .line 536
    invoke-virtual {v12, v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->setException(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 520
    :catch_1
    move-exception v3

    move-object v4, v9

    goto/16 :goto_4

    :cond_13
    move-object v4, v3

    goto/16 :goto_7

    :cond_14
    move-object v15, v3

    goto/16 :goto_3

    :cond_15
    move-object v10, v3

    goto/16 :goto_0
.end method

.method private unlinkTwitterAccount()V
    .locals 2

    .prologue
    .line 628
    invoke-static {}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getInstance()Lcom/behance/sdk/BehanceSDKSocialAccountManager;

    move-result-object v0

    .line 629
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v0, v1, p0}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->getAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Lcom/behance/sdk/dto/BehanceSDKSocialAccountDTO;

    move-result-object v1

    .line 630
    if-eqz v1, :cond_0

    .line 631
    sget-object v1, Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;->TWITTER:Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;

    invoke-virtual {v0, v1, p0}, Lcom/behance/sdk/BehanceSDKSocialAccountManager;->removeAccount(Lcom/behance/sdk/enums/BehanceSDKSocialAccountType;Landroid/content/Context;)Z

    .line 633
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->projectBinder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    invoke-direct {v0}, Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->projectBinder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->projectBinder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->projectBinder:Lcom/behance/sdk/services/binders/BehanceSDKPublishProjectBinder;

    .line 295
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->activePublishRequestId:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->sdkUserManager:Lcom/behance/sdk/managers/BehanceSDKUserManager;

    .line 147
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    .line 148
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 149
    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_anim_list_publish_in_progress_indicator:I

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 152
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->useBehanceTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    sget v0, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_in_progress_notification_title:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 162
    :cond_0
    :goto_0
    sget v0, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_in_progress_notification_text:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 163
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_in_progress_notification_text:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 164
    invoke-virtual {v2, v8, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 165
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 166
    const/16 v1, 0x7d1

    invoke-virtual {p0, v1, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->startForeground(ILandroid/app/Notification;)V

    .line 168
    const-string/jumbo v0, "INTENT_EXTRA_PARAMS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 169
    instance-of v1, v0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;

    if-eqz v1, :cond_1

    .line 170
    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;

    .line 171
    new-instance v1, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;

    invoke-direct {v1}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;-><init>()V

    .line 173
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 174
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastUploadCancelledStatusUpdate()V

    .line 289
    :cond_1
    :goto_1
    return-void

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getAppTitle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 156
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getAppColor()I

    move-result v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 178
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->publishProjectOnServer(Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->getPublishedProject()Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;

    move-result-object v4

    .line 182
    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->getNotificationHandlerActivity()Ljava/lang/Class;

    move-result-object v5

    .line 184
    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->getStatus()Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    move-result-object v6

    sget-object v7, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;->SUCCESS:Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult$PublishStatus;

    if-ne v6, v7, :cond_a

    .line 186
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->isShareOnFacebook()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    invoke-direct {p0, v4, v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->publishOnFacebook(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 190
    :cond_4
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;->isShareOnTwitter()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    invoke-direct {p0, v0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->publishOnTwitter(Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 195
    :cond_5
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 196
    invoke-direct {p0, v4, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->handleCancelAfterSuccessfulUpload(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)V

    goto :goto_1

    .line 201
    :cond_6
    iget-object v3, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v3}, Lcom/behance/sdk/BehanceSDK;->useBehanceTheme()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 202
    sget v3, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_success_notification_title:I

    invoke-virtual {p0, v3}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 203
    sget v3, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_success_notification_text:I

    invoke-virtual {p0, v3}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 210
    :goto_2
    sget v3, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_success_notification_ticker:I

    invoke-virtual {p0, v3}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 211
    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    sget v6, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_success_notification_text:I

    invoke-virtual {p0, v6}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 213
    if-eqz v5, :cond_7

    .line 214
    invoke-direct {p0, v5}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->createNotifyIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 215
    const-string/jumbo v5, "BEHANCE_SDK_PUBLISH_PROJECT_INTENT_BOOL_EXTRA_PUBLISHED_PROJECT_SUCCESSFULLY"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    const-string/jumbo v5, "BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_ID"

    .line 217
    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectId()Ljava/lang/String;

    move-result-object v6

    .line 216
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string/jumbo v5, "BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_TITLE"

    .line 219
    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectTitle()Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-direct {p0, v3}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->createPendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 222
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 224
    :cond_7
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-virtual {v1, v3}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressState(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;)V

    .line 225
    sget-object v3, Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;->PUBLISH_SUCCESSFUL:Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;

    invoke-direct {p0, v3, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getProgressPercentage(Lcom/behance/sdk/enums/BehanceSDKPublishProjectProgressState;Lcom/behance/sdk/dto/BehanceSDKPublishProjectServiceParamsDTO;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;->setProgressPercentage(I)V

    .line 226
    invoke-direct {p0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->broadcastProgressUpdate(Lcom/behance/sdk/dto/project/BehanceSDKPublishProjectStatusDTO;)V

    .line 273
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->useBehanceTheme()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 278
    sget v0, Lcom/behance/sdk/R$drawable;->bsdk_icon_notification_publish_progress:I

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 282
    :goto_4
    invoke-virtual {v2, v8, v8, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 283
    invoke-virtual {v2, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 284
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 285
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 286
    const/16 v2, 0x7d2

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 207
    :cond_9
    iget-object v3, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v3}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getAppTitle()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 208
    sget v3, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_success_notification_text_behance:I

    invoke-virtual {p0, v3}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_2

    .line 229
    :cond_a
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->isActiveUploadCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->useBehanceTheme()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 235
    sget v0, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_failure_notification_title:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 240
    :goto_5
    sget v0, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_failure_notification_ticker:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 241
    const-string/jumbo v0, ""

    .line 242
    const-string/jumbo v0, ""

    .line 243
    invoke-virtual {v3}, Lcom/behance/sdk/asynctasks/result/BehanceSDKPublishProjectTaskResult;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_b

    .line 246
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v1, "message"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 252
    :cond_b
    :goto_6
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 253
    sget v0, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_unknown_failure_notification_msg:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_7
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 258
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 260
    if-eqz v5, :cond_8

    .line 261
    invoke-direct {p0, v5}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->createNotifyIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 262
    const-string/jumbo v3, "BEHANCE_SDK_PUBLISH_PROJECT_INTENT_BOOL_EXTRA_PUBLISHED_PROJECT_SUCCESSFULLY"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    const-string/jumbo v3, "BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_ID"

    .line 264
    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectId()Ljava/lang/String;

    move-result-object v5

    .line 263
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v3, "BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_TITLE"

    .line 266
    invoke-virtual {v4}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectTitle()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string/jumbo v3, "BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISH_PROJECT_FAILURE_MSG"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-direct {p0, v1}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->createPendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 270
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_3

    .line 237
    :cond_c
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getAppTitle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_5

    .line 248
    :catch_0
    move-exception v1

    .line 249
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 255
    :cond_d
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_failure_notification_msg:I

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {p0, v1, v3}, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 280
    :cond_e
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKPublishProjectService;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getAppSmallIcon()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_4
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/IntentService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
