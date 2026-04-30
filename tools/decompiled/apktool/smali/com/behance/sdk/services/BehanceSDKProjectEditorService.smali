.class public Lcom/behance/sdk/services/BehanceSDKProjectEditorService;
.super Landroid/app/Service;
.source "BehanceSDKProjectEditorService.java"

# interfaces
.implements Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver$Callbacks;
.implements Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;


# static fields
.field private static final ACTION_CANCEL_REQUEST_CODE:I = 0x7d1

.field private static final INTENT_ACTION_CANCEL:Ljava/lang/String; = "INTENT_ACTION_CANCEL"

.field private static final NOTIFICATION_ID_PUBLISHED:I = 0x3ea

.field private static final NOTIFICATION_ID_PUBLISHING:I = 0x3e9


# instance fields
.field private accessToken:Ljava/lang/String;

.field private behanceS3Uploader:Lcom/behance/sdk/s3/BehanceS3Uploader;

.field private callbacks:Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;

.field private clientId:Ljava/lang/String;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private final mBinder:Landroid/os/IBinder;

.field private newProject:Z

.field private notificationHandlerActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private notificationManager:Landroid/app/NotificationManager;

.field private onNetworkReacquiredRunnable:Ljava/lang/Runnable;

.field private pool:Ljava/util/concurrent/ExecutorService;

.field private projectId:Ljava/lang/String;

.field private projectPublishDTO:Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;

.field private projectPublishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

.field private publishState:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

.field private receiver:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;

.field private transformedEmbeds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;",
            ">;"
        }
    .end annotation
.end field

.field private uploadedFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$ProjectEditorBinder;

    invoke-direct {v0, p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$ProjectEditorBinder;-><init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)V

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->mBinder:Landroid/os/IBinder;

    .line 85
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->NOT_STARTED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->publishState:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->onNetworkReacquiredRunnable:Ljava/lang/Runnable;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->newProject:Z

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->runOrQueueTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Z)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->showPublishInProgressNotification(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/network/BehanceMultipartEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->createProjectMultipartEntity()Lcom/behance/sdk/network/BehanceMultipartEntity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectPublishDTO:Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->showPublishSuccessNotification(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->broadcastPublishSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->transformedEmbeds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->callbacks:Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->publishState:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    return-object v0
.end method

.method static synthetic access$502(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;)Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->publishState:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->handlePublishFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->newProject:Z

    return v0
.end method

.method static synthetic access$800(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->latch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->publishProjectStepTwo()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private broadcastPublishFailure(Lcom/behance/sdk/exception/BehanceSDKException;)V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectPublishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectPublishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/IBehanceSDKProjectPublishListener;->onFailure(Lcom/behance/sdk/exception/BehanceSDKException;)V

    .line 705
    :cond_0
    return-void
.end method

.method private broadcastPublishSuccess(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectPublishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectPublishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    invoke-interface {v0, p1}, Lcom/behance/sdk/IBehanceSDKProjectPublishListener;->onSuccess(Ljava/lang/String;)V

    .line 699
    :cond_0
    return-void
.end method

.method private buildModulesJSONString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 541
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 542
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;

    .line 543
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 544
    const-string/jumbo v1, "id"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->getId()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 545
    const-string/jumbo v1, "type"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->getModuleType()Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    if-eqz v1, :cond_3

    .line 547
    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;

    .line 548
    const-string/jumbo v5, "full_bleed"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isFullBleed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "1"

    :goto_1
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->isNewModule()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    const-string/jumbo v1, "source_url"

    iget-object v5, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->uploadedFiles:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    :goto_2
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getCaption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 554
    const-string/jumbo v1, "caption"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getCaption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string/jumbo v1, "caption_alignment"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    :cond_0
    :goto_3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 548
    :cond_1
    const-string/jumbo v1, "0"

    goto :goto_1

    .line 552
    :cond_2
    const-string/jumbo v1, "source_url"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleImage;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 557
    :cond_3
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    if-eqz v1, :cond_5

    .line 558
    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;

    .line 559
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->getTextAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 560
    const-string/jumbo v1, "alignment"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->getTextAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    :cond_4
    const-string/jumbo v1, "html"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleText;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 562
    :cond_5
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    if-eqz v1, :cond_9

    .line 563
    const/4 v1, 0x0

    .line 564
    instance-of v5, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;

    if-eqz v5, :cond_7

    move-object v1, v0

    .line 565
    check-cast v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;

    .line 568
    :cond_6
    :goto_4
    if-eqz v1, :cond_0

    .line 569
    const-string/jumbo v5, "html"

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->getHtml()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string/jumbo v5, "width_unit"

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->getWidthUnit()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string/jumbo v5, "original_height"

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->getOriginalHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 572
    const-string/jumbo v5, "original_width"

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->getOriginalWidth()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 573
    const-string/jumbo v5, "full_bleed"

    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbed;->isFullBleed()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "1"

    :goto_5
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->getCaption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    const-string/jumbo v0, "caption"

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->getCaption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 576
    const-string/jumbo v0, "caption_alignment"

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;->getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 566
    :cond_7
    iget-object v5, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->transformedEmbeds:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 567
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->transformedEmbeds:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleEmbedTransformed;

    goto/16 :goto_4

    .line 573
    :cond_8
    const-string/jumbo v0, "0"

    goto :goto_5

    .line 579
    :cond_9
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;

    if-eqz v1, :cond_b

    .line 580
    check-cast v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;

    .line 581
    const-string/jumbo v5, "full_bleed"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->isFullBleed()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "1"

    :goto_6
    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    const-string/jumbo v1, "sort_type"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->getSortType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    const-string/jumbo v1, "collection_type"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->getCollectionType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    const-string/jumbo v1, "components"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->getComponents()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->getCaption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->getCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 586
    const-string/jumbo v1, "caption"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->getCaption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    const-string/jumbo v1, "caption_alignment"

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCollection;->getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 581
    :cond_a
    const-string/jumbo v1, "0"

    goto :goto_6

    .line 590
    :cond_b
    instance-of v1, v0, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 591
    check-cast v1, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;

    .line 592
    const-string/jumbo v5, "source_url"

    iget-object v6, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->uploadedFiles:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleAbstract;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 593
    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;->getCaption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;->getCaption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;->getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    const-string/jumbo v0, "caption"

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;->getCaption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 595
    const-string/jumbo v0, "caption_alignment"

    invoke-virtual {v1}, Lcom/behance/sdk/dto/editor/BehanceSDKEditProjectModuleCaptionable;->getCaptionAlignment()Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/enums/BehanceSDKProjectModuleAlignment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 600
    :cond_c
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createNotifyIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 708
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationHandlerActivity:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 709
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 710
    return-object v0
.end method

.method private createPendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 714
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createProjectMultipartEntity()Lcom/behance/sdk/network/BehanceMultipartEntity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x64

    .line 397
    new-instance v1, Lcom/behance/sdk/network/BehanceMultipartEntity;

    invoke-direct {v1}, Lcom/behance/sdk/network/BehanceMultipartEntity;-><init>()V

    .line 398
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->setBrowserCompatible(Z)V

    .line 400
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectPublishDTO:Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->getProject()Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;

    move-result-object v2

    .line 402
    const-string/jumbo v0, "modules"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getModules()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->buildModulesJSONString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 404
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectPublishDTO:Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;->isPublish()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "1"

    .line 405
    :goto_0
    const-string/jumbo v3, "published"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 407
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->isMatureContent()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "1"

    .line 408
    :goto_1
    const-string/jumbo v3, "mature_content"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 410
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->isAllowComments()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "1"

    .line 411
    :goto_2
    const-string/jumbo v3, "allow_comments"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 413
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    const-string/jumbo v0, "title"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->uploadedFiles:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    const-string/jumbo v3, "cover_source_url"

    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->uploadedFiles:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 418
    :cond_1
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getFields()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getFields()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getFields()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/BehanceSDKCreativeFieldDTO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    const-string/jumbo v0, "fields"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/behance/sdk/util/BehanceSDKUtils;->getPipeDelineatedIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 420
    :cond_2
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTags()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 421
    const-string/jumbo v0, "tags"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTags()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/behance/sdk/util/BehanceSDKUtils;->getPipeDelineatedIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 422
    :cond_3
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 423
    const-string/jumbo v0, "description"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 424
    :cond_4
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCopyright()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 425
    const-string/jumbo v0, "license"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCopyright()Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/behance/sdk/enums/BehanceSDKCopyrightOption;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 426
    :cond_5
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTools()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTools()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 427
    const-string/jumbo v0, "tools"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTools()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/behance/sdk/util/BehanceSDKUtils;->getPipeDelineatedIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 428
    :cond_6
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCredits()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCredits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 429
    const-string/jumbo v0, "credits"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getCredits()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/behance/sdk/util/BehanceSDKUtils;->getPipeDelineatedIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 430
    :cond_7
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 431
    const-string/jumbo v0, "coowners"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getOwners()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/behance/sdk/util/BehanceSDKUtils;->getPipeDelineatedIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 432
    :cond_8
    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTeams()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTeams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 433
    const-string/jumbo v0, "teams"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getTeams()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/behance/sdk/util/BehanceSDKUtils;->getPipeDelineatedIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 434
    :cond_9
    const-string/jumbo v0, "background_color"

    invoke-virtual {v2}, Lcom/behance/sdk/dto/editor/BehanceSDKEditorProjectDTO;->getBackgroundColor()I

    move-result v2

    invoke-static {v2}, Lcom/behance/sdk/util/BehanceSDKColorUtils;->getHexColorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/network/BehanceMultipartEntity;->addTextPart(Ljava/lang/String;[B)V

    .line 436
    return-object v1

    .line 404
    :cond_a
    const-string/jumbo v0, "0"

    goto/16 :goto_0

    .line 407
    :cond_b
    const-string/jumbo v0, "0"

    goto/16 :goto_1

    .line 410
    :cond_c
    const-string/jumbo v0, "0"

    goto/16 :goto_2
.end method

.method private executeNetworkRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 645
    return-void
.end method

.method private handlePublishFailure(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 267
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 268
    invoke-direct {p0, p1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->showPublishFailedNotification(Ljava/lang/String;)V

    .line 269
    new-instance v0, Lcom/behance/sdk/exception/BehanceSDKException;

    invoke-direct {v0}, Lcom/behance/sdk/exception/BehanceSDKException;-><init>()V

    invoke-direct {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->broadcastPublishFailure(Lcom/behance/sdk/exception/BehanceSDKException;)V

    .line 270
    invoke-virtual {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->stopSelf()V

    .line 271
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getClientId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->clientId:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->accessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKUserManager;

    move-result-object v0

    .line 136
    :try_start_0
    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKUserManager;->checkExpiryAndGetAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->accessToken:Ljava/lang/String;
    :try_end_0
    .catch Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->uploadedFiles:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->uploadedFiles:Ljava/util/Map;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->transformedEmbeds:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 144
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->transformedEmbeds:Ljava/util/Map;

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_3

    .line 146
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 147
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->pool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    .line 148
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->pool:Ljava/util/concurrent/ExecutorService;

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_5

    .line 150
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationManager:Landroid/app/NotificationManager;

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_6

    .line 153
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_7

    .line 155
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->connectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    new-instance v2, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$1;-><init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 175
    :cond_6
    :goto_1
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Lcom/behance/sdk/exception/BehanceSDKUserNotAuthenticatedException;->printStackTrace()V

    goto :goto_0

    .line 169
    :cond_7
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->receiver:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;

    if-nez v0, :cond_8

    .line 170
    new-instance v0, Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;

    invoke-direct {v0}, Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->receiver:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;

    .line 171
    :cond_8
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->receiver:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;->setCallbacks(Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver$Callbacks;)V

    .line 172
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->receiver:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "connectivity"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private isNetworkConnected()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private publishProjectStepOne()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;

    invoke-direct {v0, p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$3;-><init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)V

    return-object v0
.end method

.method private publishProjectStepTwo()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;

    invoke-direct {v0, p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$4;-><init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)V

    return-object v0
.end method

.method private runOrQueueTask(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-direct {p0, p1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->executeNetworkRunnable(Ljava/lang/Runnable;)V

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->onNetworkReacquiredRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private showPublishFailedNotification(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 466
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 467
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getAppColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 468
    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_notification_publish_progress:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 469
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 471
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 472
    :cond_0
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_unknown_failure_notification_msg:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 473
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    sget v2, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_unknown_failure_notification_msg:I

    invoke-virtual {p0, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 478
    :goto_0
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_failure_notification_title:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 479
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_failure_notification_ticker:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 481
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x3ea

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 482
    return-void

    .line 475
    :cond_1
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_failure_notification_msg:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 476
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    sget v2, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_failure_notification_msg:I

    invoke-virtual {p0, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private showPublishInProgressNotification(Z)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 499
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    invoke-virtual {v0, v2, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 501
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getAppColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 502
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_in_progress_notification_title:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 503
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_in_progress_notification_text:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 504
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    sget v2, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_in_progress_notification_text:I

    invoke-virtual {p0, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 505
    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_anim_list_publish_in_progress_indicator:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 506
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 507
    if-eqz p1, :cond_0

    .line 508
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    const-string/jumbo v2, "INTENT_ACTION_CANCEL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    sget v2, Lcom/behance/sdk/R$drawable;->bsdk_icon_cancel:I

    invoke-virtual {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/behance/sdk/R$string;->bsdk_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d1

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 512
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x3e9

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 513
    return-void
.end method

.method private showPublishPausedNotification()V
    .locals 3

    .prologue
    .line 485
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getAppColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 487
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_in_progress_notification_title:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 488
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_paused_notification_text:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 489
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_paused_notification_ticker:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 490
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    sget v2, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_paused_notification_text:I

    invoke-virtual {p0, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 491
    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_publish_in_progress_anim0:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 492
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 493
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 494
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x3e9

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 496
    return-void
.end method

.method private showPublishSuccessNotification(Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 440
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 441
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getAppColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 442
    sget v1, Lcom/behance/sdk/R$drawable;->bsdk_icon_notification_publish_progress:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 443
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_success_notification_title:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 444
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_success_notification_text:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 445
    sget v1, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_success_notification_ticker:I

    invoke-virtual {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 446
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    sget v2, Lcom/behance/sdk/R$string;->bsdk_publish_project_service_success_notification_text:I

    invoke-virtual {p0, v2}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 447
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 449
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationHandlerActivity:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->createNotifyIntent()Landroid/content/Intent;

    move-result-object v1

    .line 451
    const-string/jumbo v2, "BEHANCE_SDK_PUBLISH_PROJECT_INTENT_BOOL_EXTRA_PUBLISHED_PROJECT_SUCCESSFULLY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 452
    const-string/jumbo v2, "BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_ID"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string/jumbo v2, "BEHANCE_SDK_PUBLISH_PROJECT_INTENT_STR_EXTRA_PUBLISHED_PROJECT_TITLE"

    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-direct {p0, v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->createPendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 462
    :goto_0
    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x3ea

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 463
    return-void

    .line 456
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Lcom/behance/sdk/dto/BehanceSDKPublishedProjectDTO;->getProjectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method


# virtual methods
.method public deleteDraft()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 605
    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$5;

    invoke-direct {v0, p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$5;-><init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)V

    invoke-direct {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->executeNetworkRunnable(Ljava/lang/Runnable;)V

    .line 623
    :cond_0
    return-void
.end method

.method public loadProject(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 680
    :goto_0
    return-void

    .line 654
    :cond_0
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectId:Ljava/lang/String;

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->newProject:Z

    .line 656
    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$6;

    invoke-direct {v0, p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$6;-><init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;)V

    invoke-direct {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->executeNetworkRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 126
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 127
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->receiver:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->receiver:Lcom/behance/sdk/receivers/BehanceSDKInternetChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onInternetConnectionChanged(Z)V
    .locals 2

    .prologue
    .line 517
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$7;->$SwitchMap$com$behance$sdk$services$BehanceSDKProjectEditorService$PublishState:[I

    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->publishState:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    invoke-virtual {v1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 533
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->onNetworkReacquiredRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->onNetworkReacquiredRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->executeNetworkRunnable(Ljava/lang/Runnable;)V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->onNetworkReacquiredRunnable:Ljava/lang/Runnable;

    .line 537
    :cond_0
    return-void

    .line 522
    :pswitch_0
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 527
    :pswitch_1
    if-eqz p1, :cond_1

    .line 528
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->showPublishInProgressNotification(Z)V

    goto :goto_0

    .line 530
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->showPublishPausedNotification()V

    goto :goto_0

    .line 517
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->init()V

    .line 105
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "INTENT_ACTION_CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 107
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->PUBLISH_CANCELLED:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->publishState:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    .line 108
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->behanceS3Uploader:Lcom/behance/sdk/s3/BehanceS3Uploader;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->behanceS3Uploader:Lcom/behance/sdk/s3/BehanceS3Uploader;

    invoke-virtual {v0}, Lcom/behance/sdk/s3/BehanceS3Uploader;->cancel()V

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onUploadComplete(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->uploadedFiles:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 629
    return-void
.end method

.method public onUploadError(Ljava/lang/Exception;I)V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->callbacks:Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->callbacks:Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;

    invoke-interface {v0, p2}, Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;->onFileUploadFailed(I)V

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 636
    return-void
.end method

.method public onUploadProgress(FI)V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public publishProject(Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;)V
    .locals 1

    .prologue
    .line 244
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectPublishDTO:Lcom/behance/sdk/dto/editor/BehanceSDKProjectPublishDTO;

    .line 246
    sget-object v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;->CREATING_DRAFT:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->publishState:Lcom/behance/sdk/services/BehanceSDKProjectEditorService$PublishState;

    .line 247
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->showPublishInProgressNotification(Z)V

    .line 252
    :goto_0
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->publishProjectStepOne()Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->runOrQueueTask(Ljava/lang/Runnable;)V

    .line 253
    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->showPublishPausedNotification()V

    goto :goto_0
.end method

.method public setCallbacks(Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->callbacks:Lcom/behance/sdk/listeners/BehanceSDKProjectEditorServiceCallbacks;

    .line 649
    return-void
.end method

.method public setNotificationHandlerActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->notificationHandlerActivity:Ljava/lang/Class;

    .line 688
    return-void
.end method

.method public setProjectPublishListener(Lcom/behance/sdk/IBehanceSDKProjectPublishListener;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->projectPublishListener:Lcom/behance/sdk/IBehanceSDKProjectPublishListener;

    .line 684
    return-void
.end method

.method public transformEmbed(Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;

    invoke-direct {v0, p0, p1}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService$2;-><init>(Lcom/behance/sdk/services/BehanceSDKProjectEditorService;Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V

    invoke-direct {p0, v0}, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->executeNetworkRunnable(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public uploadFile(Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;)V
    .locals 6

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 202
    new-instance v0, Lcom/behance/sdk/s3/BehanceS3Uploader;

    invoke-virtual {p1}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/behance/sdk/dto/editor/BehanceSDKModulePrepareDTO;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/behance/sdk/s3/BehanceS3Uploader;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/behance/sdk/s3/BehanceS3UtilCallbacks;)V

    iput-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->behanceS3Uploader:Lcom/behance/sdk/s3/BehanceS3Uploader;

    .line 203
    iget-object v0, p0, Lcom/behance/sdk/services/BehanceSDKProjectEditorService;->behanceS3Uploader:Lcom/behance/sdk/s3/BehanceS3Uploader;

    invoke-virtual {v0}, Lcom/behance/sdk/s3/BehanceS3Uploader;->upload()V

    goto :goto_0
.end method
