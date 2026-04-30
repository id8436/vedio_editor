.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;
.super Ljava/lang/Object;
.source "AdobeUploadManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<EndPointType::",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination",
        "<TEndPointType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final UPLOAD_SESSION_KEY:Ljava/lang/String; = "upload_session_key"

.field public static _isFileUploadCompleteNotificationHandled:Z

.field private static instancesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;",
            ">;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;",
            ">;"
        }
    .end annotation
.end field

.field public static showLastUploads:Z


# instance fields
.field private _activeSessionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<TEndPointType;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->showLastUploads:Z

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_isFileUploadCompleteNotificationHandled:Z

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->instancesMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_activeSessionsMap:Ljava/util/Map;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->postAboutUploadSessions(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->postUploadSessionNotificationCommon(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    return-void
.end method

.method public static checkForNoUploadSessions()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 147
    const-class v0, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFolder;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getTotalUploadSessions()I

    move-result v0

    const-class v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/dcx/AdobeDCXManifest;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getTotalUploadSessions()I

    move-result v1

    add-int/2addr v0, v1

    const-class v1, Lcom/adobe/creativesdk/foundation/storage/AdobePhotoCollection;

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->getTotalUploadSessions()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->instancesMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->instancesMap:Ljava/util/Map;

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    invoke-direct {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->instancesMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;

    return-object v0
.end method

.method private postAboutUploadSessions(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;)V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 165
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNoUploadSessions:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeUploadSessionsActive:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne p1, v1, :cond_1

    .line 166
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 168
    :cond_1
    return-void
.end method

.method private postUploadSessionNotificationCommon(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<TEndPointType;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    const-string/jumbo v1, "upload_session_key"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    invoke-direct {v1, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    .line 158
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 159
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionComplete:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne p1, v0, :cond_0

    .line 160
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobePhotoCollectionAssetsUploadStatus;->reloadDataAfterUploaded:Z

    .line 161
    :cond_0
    return-void
.end method

.method private putUploadSessionForEndPoint(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEndPointType;",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<TEndPointType;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_activeSessionsMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method private removeUploadSessionAndNotify(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEndPointType;Z)V"
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->haveSessionForEndPoint(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->removeUploadSessionForEndPoint(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    move-result-object v0

    .line 116
    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->cancelUpload()V

    .line 119
    :cond_0
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getUploadSummary()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;->getUploadSummary()Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession$UploadSummary;->getAllAssets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadHistoryManager;->storeSessionData(Ljava/util/ArrayList;)V

    .line 121
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 122
    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$2;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;ZLcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    :cond_2
    return-void
.end method

.method private removeUploadSessionForEndPoint(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEndPointType;)",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<TEndPointType;>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_activeSessionsMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    return-object v0
.end method


# virtual methods
.method public cancelUploadSession(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEndPointType;)V"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->removeUploadSessionAndNotify(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Z)V

    .line 108
    return-void
.end method

.method public createAndStartUploadSession(Ljava/util/ArrayList;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadFileInfo;",
            ">;TEndPointType;",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/Uploader",
            "<TEndPointType;>;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->haveSessionForEndPoint(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    invoke-direct {v0, p2, p1, p3}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 84
    const/4 v1, 0x1

    sput-boolean v1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->showLastUploads:Z

    .line 85
    invoke-direct {p0, p2, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->putUploadSessionForEndPoint(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    .line 86
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeCCFilesUploadSessionStarted:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {p0, v1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->postUploadSessionNotificationCommon(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;)V

    .line 87
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeUploadSessionsActive:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-direct {p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->postAboutUploadSessions(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;)V

    .line 89
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$1;

    invoke-direct {v2, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;Ljava/lang/ref/WeakReference;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getListOfEndPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_activeSessionsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTotalUploadSessions()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_activeSessionsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getUploadSessionOfEndPoint(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEndPointType;)",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<TEndPointType;>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_activeSessionsMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    return-object v0
.end method

.method public getUploadSessionOfEndPointFromId(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession",
            "<TEndPointType;>;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_activeSessionsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadSession;

    return-object v0
.end method

.method public haveSessionForEndPoint(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEndPointType;)Z"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->_activeSessionsMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public uploadSessionComplete(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEndPointType;)V"
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/AdobeUploadManager;->removeUploadSessionAndNotify(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/upload/UploadDestination;Z)V

    .line 104
    return-void
.end method
