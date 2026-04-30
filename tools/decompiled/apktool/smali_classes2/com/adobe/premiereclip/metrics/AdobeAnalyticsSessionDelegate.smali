.class public Lcom/adobe/premiereclip/metrics/AdobeAnalyticsSessionDelegate;
.super Ljava/lang/Object;
.source "AdobeAnalyticsSessionDelegate.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInit:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/AdobeAnalyticsSessionDelegate;->mInit:Ljava/lang/Boolean;

    .line 34
    iput-object p1, p0, Lcom/adobe/premiereclip/metrics/AdobeAnalyticsSessionDelegate;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/AdobeAnalyticsSessionDelegate;->mInit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/metrics/AdobeAnalyticsSessionDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->registerDelegate(Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/AdobeAnalyticsSessionDelegate;->mInit:Ljava/lang/Boolean;

    .line 43
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/premiereclip/metrics/AdobeAnalyticsSessionDelegate;->mInit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/metrics/AdobeAnalyticsSessionDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsSession;->unregisterDelegate(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/metrics/AdobeAnalyticsSessionDelegate;->mInit:Ljava/lang/Boolean;

    .line 52
    :cond_0
    return-void
.end method

.method public trackAction(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 72
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonActionInfoInDictionary(Ljava/util/Map;)V

    .line 74
    invoke-static {p1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    return-void
.end method

.method public trackState(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 61
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/metrics/Metrics;->setCommonStateInfoInDictionary(Ljava/util/Map;)V

    .line 63
    invoke-static {p1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method public trackTimedActionEnd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .line 114
    return-void
.end method

.method public trackTimedActionStart(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .line 81
    invoke-static {p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackTimedActionStart(Ljava/lang/String;Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method public trackTimedActionUpdate(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .line 88
    invoke-static {p1, p2}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackTimedActionUpdate(Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    return-void
.end method
