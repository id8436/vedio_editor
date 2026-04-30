.class public Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;
.super Ljava/lang/Object;
.source "AdobeNotificationManager.java"


# static fields
.field private static contactsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorContact;",
            ">;"
        }
    .end annotation
.end field

.field private static currentCloudPublic:Z

.field private static mContactsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorContact;",
            ">;"
        }
    .end annotation
.end field

.field private static notificationSwitchedOn:Z

.field private static registerProcessOngoing:Z

.field private static service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

.field private static sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;


# instance fields
.field private activitiesRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;",
            ">;"
        }
    .end annotation
.end field

.field private adobeAppID:Ljava/lang/String;

.field private androidID:Ljava/lang/String;

.field private cloudSwitchingObserver:Ljava/util/Observer;

.field private currentlyFetchingActivities:Z

.field private currentlyFetchingInvitations:Z

.field private deviceID:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private errorWhileFetchingActivities:Z

.field private errorWhileFetchingInvitations:Z

.field private googleRegistrationID:Ljava/lang/String;

.field private invitationsRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;",
            ">;"
        }
    .end annotation
.end field

.field lastSentCount:I

.field private lastTimeStampFetched:J

.field private loginNotificationObserver:Ljava/util/Observer;

.field private networkReachabilityObserver:Ljava/util/Observer;

.field private notificationHandler:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationHandler;

.field private notificationInterface:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;

.field private notificationSwitchObserver:Ljava/util/Observer;

.field private packageName:Ljava/lang/String;

.field private pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

.field private unreadCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    sput-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationSwitchedOn:Z

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->registerProcessOngoing:Z

    .line 94
    sput-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->lastSentCount:I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    .line 121
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->currentlyFetchingActivities:Z

    .line 122
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->currentlyFetchingInvitations:Z

    .line 123
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->errorWhileFetchingActivities:Z

    .line 124
    iput-boolean v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->errorWhileFetchingInvitations:Z

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->activitiesRequestQueue:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->invitationsRequestQueue:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->mContactsMap:Ljava/util/Map;

    .line 146
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->populateContactsList()V

    .line 147
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->registerLocalNotifications()V

    .line 148
    return-void
.end method

.method static synthetic access$002(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 86
    sput-object p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->contactsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->mContactsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->queryInvitationFromCollaborator()V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->queryActivitiesFromANS()V

    return-void
.end method

.method static synthetic access$1200(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationHandler;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationHandler:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;Z)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleInvitationRequests(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->lastTimeStampFetched:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;J)J
    .locals 1

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->lastTimeStampFetched:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;Z)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleActivitiesRequests(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;I)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleActivitiesProgress(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;JJI)V
    .locals 1

    .prologue
    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->queryNotificationsByPage(JJI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->wentOnline()V

    return-void
.end method

.method static synthetic access$200()Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    return-object v0
.end method

.method static synthetic access$2300()V
    .locals 0

    .prologue
    .line 86
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->logout()V

    return-void
.end method

.method static synthetic access$2400(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleSwitchToPrivateCloud()V

    return-void
.end method

.method static synthetic access$2500(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleSwitchToPublicCloud()V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;I)I
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    return p1
.end method

.method static synthetic access$502(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->googleRegistrationID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->registerDevice()V

    return-void
.end method

.method static synthetic access$700(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->startFetchingData()V

    return-void
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .prologue
    .line 86
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->registerProcessOngoing:Z

    return p0
.end method

.method static synthetic access$900(I)V
    .locals 0

    .prologue
    .line 86
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sendNewCountToAssetBrowser(I)V

    return-void
.end method

.method private static checkAndSendExpiredCount(I)V
    .locals 1

    .prologue
    .line 860
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    if-ge p0, v0, :cond_1

    .line 861
    :cond_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sendNewCountToAssetBrowser(I)V

    .line 862
    :cond_1
    return-void
.end method

.method private static checkAndSendNewCount(I)V
    .locals 1

    .prologue
    .line 865
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    if-le p0, v0, :cond_1

    .line 866
    :cond_0
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sendNewCountToAssetBrowser(I)V

    .line 867
    :cond_1
    return-void
.end method

.method private checkDeviceID()Z
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkGoogleRegistrationID()Z
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->googleRegistrationID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->googleRegistrationID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActivitiesList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getActivitiesList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getAdobeID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAdobeID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAssetCommentCount(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 443
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v1, :cond_0

    .line 445
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    if-eqz v1, :cond_0

    .line 446
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getAssetCommentCount(Ljava/lang/String;)I

    move-result v0

    .line 451
    :cond_0
    return v0
.end method

.method public static getAssetURLFromGUID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;)V
    .locals 7

    .prologue
    .line 630
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v1

    .line 632
    const-string/jumbo v0, ""

    .line 633
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$auth$AdobeAuthIMSEnvironment:[I

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getEnvironment()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIMSEnvironment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 644
    :goto_0
    const-class v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v2

    .line 646
    :try_start_0
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    if-nez v3, :cond_0

    .line 647
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 649
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 650
    const-string/jumbo v5, "x-api-key"

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput-object v5, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 653
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v1, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 655
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$5;

    invoke-direct {v2, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$5;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;)V

    .line 675
    :try_start_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 681
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "resolve?id=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 685
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 686
    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 687
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodHEAD:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 689
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v3, v0, v4, v2, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 694
    :goto_2
    return-void

    .line 635
    :pswitch_0
    const-string/jumbo v0, "https://cc-api-storage-stage.adobe.io/"

    goto :goto_0

    .line 638
    :pswitch_1
    const-string/jumbo v0, "https://cc-api-storage.adobe.io/"

    goto :goto_0

    .line 655
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 676
    :catch_0
    move-exception v1

    .line 677
    const/4 v1, 0x0

    goto :goto_1

    .line 690
    :catch_1
    move-exception v0

    .line 691
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_2

    .line 633
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getContactList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v1

    .line 171
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->contactsList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getContactsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v1

    .line 177
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->mContactsMap:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getGuidFromHref(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 999
    .line 1000
    if-nez p0, :cond_0

    .line 1001
    const/4 v0, 0x0

    .line 1005
    :goto_0
    return-object v0

    .line 1002
    :cond_0
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1003
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1004
    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1005
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getInvitationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationInvite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInvitationList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getLibraryURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1298
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1299
    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationManager()Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    return-object v0
.end method

.method public static getRenditionFromAssetFileURL(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;ILcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;",
            "I",
            "Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback",
            "<[B",
            "Lcom/adobe/creativesdk/foundation/storage/AdobeAssetException;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 531
    const-string/jumbo v1, "https://cc-api-storage.adobe.io"

    .line 534
    const-class v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v2

    .line 537
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    if-nez v0, :cond_0

    .line 540
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 543
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 544
    const-string/jumbo v5, "x-api-key"

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    new-instance v5, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getClientID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v1, v0, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sput-object v5, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 547
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 550
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$3;

    invoke-direct {v2, p4}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$3;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;)V

    .line 569
    iget v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    iget v3, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->width:F

    float-to-int v0, v0

    .line 572
    :goto_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ";size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%s/:rendition;page=%d%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 574
    new-instance v3, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 577
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;-><init>()V

    .line 578
    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setUrl(Ljava/net/URL;)V

    .line 579
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;->AdobeNetworkHttpRequestMethodGET:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestMethod(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequestMethod;)V

    .line 582
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$storage$AdobeAssetFileRenditionType:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFileRenditionType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 591
    const-string/jumbo v0, "image/jpeg"

    .line 595
    :goto_1
    const-string/jumbo v3, "Accept"

    invoke-virtual {v1, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->getResponseForDataRequest(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 607
    :goto_2
    return-void

    .line 550
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 569
    :cond_1
    iget v0, p2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetImageDimensions;->height:F

    float-to-int v0, v0

    goto :goto_0

    .line 584
    :pswitch_0
    :try_start_3
    const-string/jumbo v0, "image/png"

    goto :goto_1

    .line 587
    :pswitch_1
    const-string/jumbo v0, "image/pdf"
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 601
    :catch_0
    move-exception v0

    .line 602
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 603
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AssetStorage.requestRendition"

    const-string/jumbo v2, "URISyntaxException"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 604
    :catch_1
    move-exception v0

    .line 605
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->INFO:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AssetStorage.requestRendition"

    const-string/jumbo v2, "MalformedURLException"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getStatusOfCurrentlyFetchingInvitation()Z
    .locals 2

    .prologue
    .line 1207
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v1

    .line 1208
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->currentlyFetchingInvitations:Z

    monitor-exit v1

    return v0

    .line 1209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getStatusOfFetchingActivities()Z
    .locals 2

    .prologue
    .line 1195
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    monitor-enter v1

    .line 1196
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->currentlyFetchingActivities:Z

    monitor-exit v1

    return v0

    .line 1197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleActivitiesProgress(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1144
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->lastSentCount:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->lastSentCount:I

    .line 1145
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->lastSentCount:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    .line 1146
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->lastSentCount:I

    .line 1147
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getActivitiesList()Ljava/util/ArrayList;

    move-result-object v2

    move v1, v0

    .line 1148
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->activitiesRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->activitiesRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;

    .line 1150
    invoke-interface {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;->onProgress(Ljava/util/ArrayList;)V

    .line 1148
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1153
    :cond_0
    return-void
.end method

.method private handleActivitiesRequests(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1169
    if-eqz p1, :cond_1

    .line 1170
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getActivitiesList()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 1171
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->activitiesRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->activitiesRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;

    .line 1173
    invoke-interface {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;->onSuccess(Ljava/util/ArrayList;)V

    .line 1171
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1175
    :cond_0
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->errorWhileFetchingActivities:Z

    .line 1183
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->activitiesRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1184
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleSharedPreferences()V

    .line 1185
    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setStatusOfFetchingActivities(Z)V

    .line 1186
    return-void

    :cond_1
    move v1, v2

    .line 1177
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->activitiesRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1178
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->activitiesRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;

    .line 1179
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;->onError()V

    .line 1177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1181
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->errorWhileFetchingActivities:Z

    goto :goto_1
.end method

.method private static handleCommentNotificationOperation(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 2

    .prologue
    .line 1009
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$12;

    invoke-direct {v0, p2, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$12;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;Landroid/content/Context;)V

    .line 1043
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$13;

    invoke-direct {v1, v0, p3, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$13;-><init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;)V

    invoke-static {p1, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getAssetURLFromGUID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;)V

    .line 1056
    return-void
.end method

.method private static handleDefaultNotification()V
    .locals 0

    .prologue
    .line 957
    return-void
.end method

.method private static handleExpiredCollaborationRemove(Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 382
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredNotificationCommon(Landroid/os/Bundle;Z)V

    .line 383
    return-void
.end method

.method private static handleExpiredCollaborationUpdate(Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 386
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredNotificationCommon(Landroid/os/Bundle;Z)V

    .line 387
    return-void
.end method

.method private static handleExpiredCommentNotification(Landroid/os/Bundle;Z)V
    .locals 4

    .prologue
    .line 827
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredNotificationCommon(Landroid/os/Bundle;Z)V

    .line 828
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 829
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesNotificationRefreshCommentCount:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 833
    return-void
.end method

.method private static handleExpiredInvitation(Landroid/os/Bundle;Z)V
    .locals 4

    .prologue
    .line 819
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    .line 820
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->removeInvitation(Landroid/os/Bundle;Z)V

    .line 822
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesNotificationRefreshInvitation:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 823
    return-void
.end method

.method private static handleExpiredInvitationAccept(Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 814
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredNotificationCommon(Landroid/os/Bundle;Z)V

    .line 815
    return-void
.end method

.method private static handleExpiredInvitationDecline(Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 378
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredNotificationCommon(Landroid/os/Bundle;Z)V

    .line 379
    return-void
.end method

.method private static handleExpiredInvitationRevoke(Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 366
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredNotificationCommon(Landroid/os/Bundle;Z)V

    .line 368
    return-void
.end method

.method public static handleExpiredNotification(Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 334
    const-string/jumbo v0, "subType"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v0

    .line 335
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setNewCountInAssetBrowser(Landroid/os/Bundle;)V

    .line 336
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 363
    :goto_0
    return-void

    .line 338
    :pswitch_0
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredCommentNotification(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 341
    :pswitch_1
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredInvitation(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 345
    :pswitch_2
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredInvitationAccept(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 348
    :pswitch_3
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredCollaborationUpdate(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 351
    :pswitch_4
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredCollaborationRemove(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 354
    :pswitch_5
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredInvitationDecline(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 357
    :pswitch_6
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredInvitationRevoke(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static handleExpiredNotificationCommon(Landroid/os/Bundle;Z)V
    .locals 4

    .prologue
    .line 371
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->markActivityAsRead(Landroid/os/Bundle;Z)V

    .line 373
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesNotificationRefreshActivity:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 375
    return-void
.end method

.method private static handleInvitationAcceptNotification(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;)V
    .locals 3

    .prologue
    .line 965
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_ASSETS:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne p3, v0, :cond_0

    .line 966
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$11;

    invoke-direct {v0, p2, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$11;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getAssetURLFromGUID(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;)V

    .line 996
    :goto_0
    return-void

    .line 985
    :cond_0
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getGuidFromHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 986
    invoke-static {}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getSharedInstance()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager;->getLibraryWithId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 987
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v1, v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationHandler:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationHandler;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v0, p1, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationHandler;->launchHandler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 988
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;->onSuccess()V

    goto :goto_0

    .line 991
    :cond_1
    invoke-interface {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;->onError()V

    goto :goto_0
.end method

.method private handleInvitationRequests(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1229
    invoke-direct {p0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setStatusOfCurrentlyFetchingInvitation(Z)V

    .line 1230
    if-eqz p1, :cond_1

    .line 1231
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getInvitationList()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 1232
    :goto_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->invitationsRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->invitationsRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;

    .line 1234
    invoke-interface {v0, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;->onSuccess(Ljava/util/ArrayList;)V

    .line 1232
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1236
    :cond_0
    iput-boolean v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->errorWhileFetchingInvitations:Z

    .line 1245
    :goto_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->invitationsRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1246
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleSharedPreferences()V

    .line 1247
    return-void

    .line 1238
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->invitationsRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->invitationsRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;

    .line 1240
    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;->onError()V

    .line 1238
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1242
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->errorWhileFetchingInvitations:Z

    goto :goto_1
.end method

.method private static handleNewCollaboratorRemove(Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 893
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->insertNewNotification(Landroid/os/Bundle;Z)V

    .line 894
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    move-result-object v0

    .line 895
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v0, v1, :cond_0

    .line 896
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getLibraryController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryController;->forceSync()V

    .line 897
    :cond_0
    return-void
.end method

.method private static handleNewCollaboratorRoleChange(Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 877
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->insertNewNotification(Landroid/os/Bundle;Z)V

    .line 878
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    move-result-object v0

    .line 879
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;->ADOBE_PUSH_NOTIFICATION_TYPE_DESIGN_LIBRARY:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    if-ne v0, v1, :cond_0

    .line 880
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getInstance()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/appbridge/ACLibraryManagerAppBridge;->getLibraryController()Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/core/ACLibraryController;->forceSync()V

    .line 881
    :cond_0
    return-void
.end method

.method private static handleNewCommentNotification(Landroid/os/Bundle;Z)V
    .locals 5

    .prologue
    .line 908
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    .line 909
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->insertNewActivity(Landroid/os/Bundle;Z)V

    .line 911
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 912
    const-string/jumbo v1, "assetUrl"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 914
    if-eqz v1, :cond_1

    .line 916
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 917
    const-string/jumbo v2, "assetURL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "region"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesNotificationRefreshActivity:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 920
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesNotificationRefreshComment:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 921
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesNotificationRefreshCommentCount:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {v2, v3, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 925
    :cond_1
    return-void
.end method

.method private static handleNewInvitationAccept(Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 872
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->insertNewNotification(Landroid/os/Bundle;Z)V

    .line 873
    return-void
.end method

.method private static handleNewInvitationDecline(Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 888
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->insertNewNotification(Landroid/os/Bundle;Z)V

    .line 890
    return-void
.end method

.method private static handleNewInvitationNotification(Landroid/os/Bundle;Z)V
    .locals 4

    .prologue
    .line 946
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    .line 947
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->insertNewInvitation(Landroid/os/Bundle;Z)V

    .line 949
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesNotificationRefreshInvitation:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 952
    return-void
.end method

.method private static handleNewInvitationRevoke(Landroid/os/Bundle;Z)V
    .locals 0

    .prologue
    .line 884
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->insertNewNotification(Landroid/os/Bundle;Z)V

    .line 885
    return-void
.end method

.method public static handleNewNotification(Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 298
    const-string/jumbo v0, "subType"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    move-result-object v0

    .line 299
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setNewCountInAssetBrowser(Landroid/os/Bundle;)V

    .line 300
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    return-void

    .line 302
    :pswitch_0
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleNewCommentNotification(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleNewInvitationNotification(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 309
    :pswitch_2
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleNewInvitationAccept(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 312
    :pswitch_3
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleNewCollaboratorRoleChange(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 315
    :pswitch_4
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleNewCollaboratorRemove(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 318
    :pswitch_5
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleNewInvitationDecline(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 321
    :pswitch_6
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleNewInvitationRevoke(Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static handleNotificationOperation(Landroid/content/Context;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    .locals 2

    .prologue
    .line 392
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$18;->$SwitchMap$com$adobe$creativesdk$foundation$internal$pushnotification$model$AdobePushNotificationSubType:[I

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 401
    :pswitch_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleDefaultNotification()V

    .line 404
    :goto_0
    return-void

    .line 394
    :pswitch_1
    invoke-static {p0, p3, p4, p5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleCommentNotificationOperation(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    goto :goto_0

    .line 398
    :pswitch_2
    invoke-static {p0, p3, p4, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleInvitationAcceptNotification(Landroid/content/Context;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;)V

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handleSharedPreferences()V
    .locals 2

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getStatusOfFetchingActivities()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getStatusOfCurrentlyFetchingInvitation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->populateSharedPref(I)V

    .line 1253
    :cond_0
    return-void
.end method

.method private handleSwitchToPrivateCloud()V
    .locals 1

    .prologue
    .line 1222
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->isCurrentCloudPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setCurrentCloudStatus(Z)V

    .line 1226
    :cond_0
    return-void
.end method

.method private handleSwitchToPublicCloud()V
    .locals 1

    .prologue
    .line 1214
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->isCurrentCloudPublic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1215
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setCurrentCloudStatus(Z)V

    .line 1216
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->startFetchingData()V

    .line 1218
    :cond_0
    return-void
.end method

.method private static insertNewNotification(Landroid/os/Bundle;Z)V
    .locals 4

    .prologue
    .line 900
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    .line 901
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0, p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->insertNewActivity(Landroid/os/Bundle;Z)V

    .line 902
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesNotificationRefreshActivity:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 904
    return-void
.end method

.method public static isCurrentCloudPublic()Z
    .locals 1

    .prologue
    .line 229
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->currentCloudPublic:Z

    return v0
.end method

.method public static isNotificationSwitchedOn()Z
    .locals 1

    .prologue
    .line 223
    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationSwitchedOn:Z

    return v0
.end method

.method private static logout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1352
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->resetSharedSession()V

    .line 1353
    sput-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    .line 1354
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    .line 1355
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iput-object v1, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    .line 1356
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    if-eqz v0, :cond_0

    .line 1357
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->clearActivitiesList()V

    .line 1358
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iget-object v0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->clearInvitationList()V

    .line 1361
    :cond_0
    return-void
.end method

.method private populateContactsList()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$1;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getContacts(Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationContactsCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 167
    return-void
.end method

.method public static processNotification(Landroid/os/Bundle;Z)V
    .locals 2

    .prologue
    .line 278
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->isCurrentCloudPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->isNotificationSwitchedOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string/jumbo v0, "targetId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getAdobeID()Ljava/lang/String;

    move-result-object v1

    .line 283
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v0, "state"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    move-result-object v0

    .line 285
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    if-ne v0, v1, :cond_1

    .line 286
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleExpiredNotification(Landroid/os/Bundle;Z)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-static {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleNewNotification(Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private queryActivitiesFromANS()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    const/16 v6, 0x1e

    .line 1082
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->isCurrentCloudPublic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setStatusOfFetchingActivities(Z)V

    .line 1084
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->clearActivitiesList()V

    .line 1085
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    if-le v0, v6, :cond_0

    iget v6, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    :cond_0
    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->queryNotifications(JJI)V

    .line 1087
    :cond_1
    return-void
.end method

.method private queryInvitationFromCollaborator()V
    .locals 2

    .prologue
    .line 1062
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->isCurrentCloudPublic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setStatusOfCurrentlyFetchingInvitation(Z)V

    .line 1064
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->clearInvitationList()V

    .line 1065
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getSharedSession()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;

    move-result-object v0

    .line 1066
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$14;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$14;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSession;->getInvites(Lcom/adobe/creativesdk/foundation/internal/collaboration/delegates/IAdobeCollaborationGetInvitesCallBack;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 1079
    :cond_0
    return-void
.end method

.method private queryNotifications(JJI)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1090
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1091
    iput v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->lastSentCount:I

    .line 1092
    invoke-direct/range {p0 .. p5}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->queryNotificationsByPage(JJI)V

    .line 1097
    :goto_0
    return-void

    .line 1095
    :cond_0
    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleActivitiesRequests(Z)V

    goto :goto_0
.end method

.method private queryNotificationsByPage(JJI)V
    .locals 13

    .prologue
    const/16 v10, 0xa

    .line 1100
    move/from16 v0, p5

    if-le v0, v10, :cond_1

    .line 1101
    :goto_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession()Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    move-result-object v3

    .line 1102
    if-eqz v3, :cond_0

    .line 1103
    new-instance v11, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$15;

    move/from16 v0, p5

    invoke-direct {v11, p0, v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$15;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;IJ)V

    .line 1139
    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->adobeAppID:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    move-wide v6, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v11}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->queryNotifications(Ljava/lang/String;Ljava/lang/String;JJILcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 1141
    :cond_0
    return-void

    :cond_1
    move/from16 v10, p5

    .line 1100
    goto :goto_0
.end method

.method public static refreshNotificationCount()V
    .locals 2

    .prologue
    .line 610
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    .line 611
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$4;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$4;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->queryUnreadNotificationsCount(Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;)V

    .line 625
    :cond_0
    return-void
.end method

.method private registerDevice()V
    .locals 8

    .prologue
    .line 723
    const-class v7, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v7

    .line 726
    :try_start_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->checkGoogleRegistrationID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->checkDeviceID()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->registerProcessOngoing:Z

    if-nez v0, :cond_0

    .line 728
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->registerProcessOngoing:Z

    .line 729
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setStatusOfCurrentlyFetchingInvitation(Z)V

    .line 730
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setStatusOfFetchingActivities(Z)V

    .line 732
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession()Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_0

    .line 735
    new-instance v6, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$7;

    invoke-direct {v6, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$7;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    .line 748
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceType:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->adobeAppID:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->androidID:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->googleRegistrationID:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->packageName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->registerDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 751
    :cond_0
    monitor-exit v7

    .line 752
    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static sendNewCountToAssetBrowser(I)V
    .locals 6

    .prologue
    .line 928
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    .line 929
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iput p0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    .line 930
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 931
    const-string/jumbo v1, "unreadCount"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 933
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$10;

    invoke-direct {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$10;-><init>(Ljava/util/HashMap;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 941
    return-void
.end method

.method public static setCurrentCloudStatus(Z)V
    .locals 0

    .prologue
    .line 233
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->currentCloudPublic:Z

    .line 234
    return-void
.end method

.method private static setNewCountInAssetBrowser(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 843
    const-string/jumbo v0, "unreadCount"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 844
    const-string/jumbo v0, "unreadCount"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    if-eqz v0, :cond_0

    .line 846
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 847
    const-string/jumbo v1, "state"

    .line 848
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->getValue(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    move-result-object v1

    .line 849
    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    if-ne v1, v2, :cond_1

    .line 850
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->checkAndSendNewCount(I)V

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->checkAndSendExpiredCount(I)V

    goto :goto_0
.end method

.method public static setNotificationSwitchStatus(Z)V
    .locals 0

    .prologue
    .line 219
    sput-boolean p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationSwitchedOn:Z

    .line 220
    return-void
.end method

.method private setStatusOfCurrentlyFetchingInvitation(Z)V
    .locals 2

    .prologue
    .line 1201
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v1

    .line 1202
    :try_start_0
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->currentlyFetchingInvitations:Z

    .line 1203
    monitor-exit v1

    .line 1204
    return-void

    .line 1203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStatusOfFetchingActivities(Z)V
    .locals 2

    .prologue
    .line 1189
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v1

    .line 1190
    :try_start_0
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->currentlyFetchingActivities:Z

    .line 1191
    monitor-exit v1

    .line 1192
    return-void

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startFetchingData()V
    .locals 1

    .prologue
    .line 766
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$8;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$8;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->queryUnreadNotificationsCount(Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;)V

    .line 787
    return-void
.end method

.method private startInitialization()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationInterface:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;->getFullPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->packageName:Ljava/lang/String;

    .line 700
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationInterface:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;->getAdobeAppID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->adobeAppID:Ljava/lang/String;

    .line 701
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationInterface:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->androidID:Ljava/lang/String;

    .line 702
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationInterface:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceType:Ljava/lang/String;

    .line 705
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationInterface:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$6;

    invoke-direct {v1, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$6;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;->registerGCM(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGoogleRegistrationCallback;)V

    .line 718
    return-void
.end method

.method public static startNotificationManager(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;
    .locals 2

    .prologue
    .line 191
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v1

    .line 195
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    .line 199
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    iput-object p0, v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationInterface:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;

    .line 204
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->isNotificationSwitchedOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->startInitialization()V

    .line 209
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    return-object v0

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static unRegisterDevice()V
    .locals 2

    .prologue
    .line 257
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sharedManager:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$2;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$2;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unRegisterDevice(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;)V

    .line 273
    :cond_0
    return-void
.end method

.method private updateNotification(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V
    .locals 5

    .prologue
    .line 792
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->getPushNotificationQueue()Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->getReadNotificationsList()Ljava/util/ArrayList;

    move-result-object v0

    .line 793
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession()Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    move-result-object v1

    .line 794
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$9;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$9;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    .line 805
    if-eqz v1, :cond_0

    .line 806
    sget-object v3, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_NEW:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    if-ne p1, v3, :cond_1

    .line 807
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->adobeAppID:Ljava/lang/String;

    const-string/jumbo v4, "NEW"

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->updateNotifications(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->adobeAppID:Ljava/lang/String;

    const-string/jumbo v4, "EXPIRED"

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->updateNotifications(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    goto :goto_0
.end method

.method private wentOnline()V
    .locals 3

    .prologue
    .line 1267
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    monitor-enter v1

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->isNotificationSwitchedOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1271
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->googleRegistrationID:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->googleRegistrationID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1273
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationInterface:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;

    if-eqz v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationInterface:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$16;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$16;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    invoke-interface {v0, v2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationInterface;->registerGCM(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGoogleRegistrationCallback;)V

    .line 1293
    :cond_1
    :goto_0
    monitor-exit v1

    .line 1294
    return-void

    .line 1287
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->registerDevice()V

    goto :goto_0

    .line 1293
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1288
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->isNotificationSwitchedOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1289
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unRegisterDevice()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getActivities(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;Z)V
    .locals 1

    .prologue
    .line 491
    if-eqz p2, :cond_1

    .line 492
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getStatusOfFetchingActivities()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->putActivitiesRequestInQueue(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;)V

    .line 494
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->queryActivitiesFromANS()V

    .line 510
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getActivitiesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;->onSuccess(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getStatusOfFetchingActivities()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 502
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getActivitiesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->handleActivitiesProgress(I)V

    .line 503
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->putActivitiesRequestInQueue(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;)V

    goto :goto_0

    .line 505
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->errorWhileFetchingActivities:Z

    if-eqz v0, :cond_3

    .line 506
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getActivities(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;Z)V

    goto :goto_0

    .line 508
    :cond_3
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getActivitiesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;->onSuccess(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public getInvitations(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;Z)V
    .locals 1

    .prologue
    .line 465
    if-eqz p2, :cond_0

    .line 466
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->putInvitationRequestInQueue(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;)V

    .line 467
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->queryInvitationFromCollaborator()V

    .line 477
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getStatusOfCurrentlyFetchingInvitation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->putInvitationRequestInQueue(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;)V

    goto :goto_0

    .line 472
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->errorWhileFetchingInvitations:Z

    if-eqz v0, :cond_2

    .line 473
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getInvitations(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;Z)V

    goto :goto_0

    .line 475
    :cond_2
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getInvitationList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;->onSuccess(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public getMoreActivities(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;)V
    .locals 7

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->getStatusOfFetchingActivities()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->putActivitiesRequestInQueue(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;)V

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->lastSentCount:I

    .line 485
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->lastTimeStampFetched:J

    const/16 v6, 0xa

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->queryNotificationsByPage(JJI)V

    .line 488
    :cond_0
    return-void
.end method

.method public getUnreadCount()I
    .locals 2

    .prologue
    .line 515
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 516
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    .line 517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markActivitiesAsRead(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 417
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 418
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    .line 419
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->getPushNotificationQueue()Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->putNotificationInQueue(Ljava/util/List;)V

    .line 420
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->markActivityAsReadInSharedPref(Ljava/lang/String;)V

    .line 417
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 422
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    .line 423
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInvitationListSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInvitationListSize()I

    move-result v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    .line 426
    :cond_1
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sendNewCountToAssetBrowser(I)V

    .line 427
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->updateNotification(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    .line 430
    :cond_2
    return-void
.end method

.method public markNotificationsForAssetsAsRead(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->markNotificationsForAssetsAsRead(Ljava/lang/String;Z)I

    move-result v0

    .line 458
    iget v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    .line 459
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInvitationListSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->getInvitationListSize()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    .line 460
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->sendNewCountToAssetBrowser(I)V

    .line 461
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;->ADOBE_PUSH_NOTIFICATION_STATE_EXPIRED:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->updateNotification(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V

    .line 462
    return-void

    .line 459
    :cond_0
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unreadCount:I

    goto :goto_0
.end method

.method public putActivitiesRequestInQueue(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetActivitiesCallback;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->activitiesRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method public putInvitationRequestInQueue(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationGetInvitationCallback;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->invitationsRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    return-void
.end method

.method public queryUnreadNotificationsCount(Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;)V
    .locals 3

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1158
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession()Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    move-result-object v0

    .line 1159
    if-eqz v0, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->adobeAppID:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->queryUnreadNotificationCount(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;->onError()V

    goto :goto_0
.end method

.method protected registerLocalNotifications()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1306
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->networkReachabilityObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 1307
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$17;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$17;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->networkReachabilityObserver:Ljava/util/Observer;

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->loginNotificationObserver:Ljava/util/Observer;

    if-nez v0, :cond_1

    .line 1328
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$LoginNotificationObserver;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$LoginNotificationObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->loginNotificationObserver:Ljava/util/Observer;

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->cloudSwitchingObserver:Ljava/util/Observer;

    if-nez v0, :cond_2

    .line 1330
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$CloudChangeNotificationObserver;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$CloudChangeNotificationObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->cloudSwitchingObserver:Ljava/util/Observer;

    .line 1331
    :cond_2
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationSwitchObserver:Ljava/util/Observer;

    if-nez v0, :cond_3

    .line 1332
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$NotificationSwitchChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$NotificationSwitchChangeListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$1;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationSwitchObserver:Ljava/util/Observer;

    .line 1335
    :cond_3
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->loginNotificationObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1336
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->loginNotificationObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1337
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->loginNotificationObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1339
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNotificationManagerNotificationSwitchChange:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationSwitchObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1343
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNotificationManagerSwitchedToPrivateCloudNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->cloudSwitchingObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1344
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNotificationManagerSwitchedToPublicCloudNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->cloudSwitchingObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1345
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNetworkStatusChangeNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->networkReachabilityObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 1348
    return-void
.end method

.method public removeInvitations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->pushNotificationDataModel:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->removeInvitations(Ljava/util/List;)V

    .line 413
    return-void
.end method

.method public setNotificationHandler(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationHandler;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->notificationHandler:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationHandler;

    .line 215
    return-void
.end method

.method public unRegisterDevice(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;)V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 244
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->sharedSession()Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->adobeAppID:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->deviceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;->unregisterDevice(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;->onError()V

    goto :goto_0
.end method
