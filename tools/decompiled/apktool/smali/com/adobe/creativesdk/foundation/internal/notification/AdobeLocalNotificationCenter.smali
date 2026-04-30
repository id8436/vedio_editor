.class public Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;
.super Ljava/lang/Object;
.source "AdobeLocalNotificationCenter.java"


# static fields
.field private static staticNotificationCenter:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;


# instance fields
.field _observables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;",
            "Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->staticNotificationCenter:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->_observables:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->_observables:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public static declared-synchronized getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->staticNotificationCenter:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->staticNotificationCenter:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    .line 42
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->staticNotificationCenter:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V
    .locals 2

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->_observables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;

    .line 53
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$1;)V

    .line 56
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->_observables:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;->addObserver(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->_observables:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;

    .line 73
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;->markChanged()V

    .line 76
    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V
    .locals 1

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->_observables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;

    .line 64
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter$ObservableWrapper;->deleteObserver(Ljava/util/Observer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
