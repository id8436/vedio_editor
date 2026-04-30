.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;
.super Ljava/lang/Object;
.source "AdobeInternalNotificationListener.java"


# instance fields
.field private notificationHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field

.field private notificationObserver:Ljava/util/Observer;

.field private notificationQueue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener$1;

    invoke-direct {v0, p0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener$1;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;)V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationObserver:Ljava/util/Observer;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationQueue:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationHandlers:Ljava/util/Map;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationHandlers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationQueue:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public clearQueue(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationQueue:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    return-void
.end method

.method public getNotificationsForID(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationQueue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public registerForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;Ljava/util/Observer;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationHandlers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationObserver:Ljava/util/Observer;

    invoke-virtual {v0, p1, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 63
    return-void
.end method

.method public unregisterForNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->notificationHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
