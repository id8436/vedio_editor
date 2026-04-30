.class public Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;
.super Ljava/lang/Object;
.source "AdobeAnalyticsSession.java"


# static fields
.field private static volatile sharedSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;


# instance fields
.field private registeredSessionDelegates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public static getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->sharedSession:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public hasDelegate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method init()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public registerDelegate(Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method trackAction(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->hasDelegate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 92
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

    .line 93
    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method trackState(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->hasDelegate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    :cond_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 80
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

    .line 81
    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method trackTimedActionEnd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->hasDelegate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 128
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

    .line 129
    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;->trackTimedActionEnd(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method trackTimedActionStart(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->hasDelegate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    :cond_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 104
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

    .line 105
    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;->trackTimedActionStart(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method trackTimedActionUpdate(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->hasDelegate()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 116
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

    .line 117
    invoke-interface {v0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;->trackTimedActionUpdate(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public unregisterDelegate(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registeredSessionDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method
