.class public Lcom/adobe/premiereclip/analytics/ABTestNotification;
.super Lcom/adobe/premiereclip/analytics/ABTesting;
.source "ABTestNotification.java"


# static fields
.field private static final SUCCESS_TARGET_NAME:Ljava/lang/String; = "clip-notification-tap"

.field private static final TAG:Ljava/lang/String; = "ABTestNotification"

.field private static final TARGET_NAME:Ljava/lang/String; = "clip-notification-feed"


# instance fields
.field private final FALLBACK_PREVIEW:Z

.field private final FALSE:Ljava/lang/String;

.field private final GROUPNAME_KEY:Ljava/lang/String;

.field private final PREVIEW_KEY:Ljava/lang/String;

.field private final TRUE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 36
    const-string/jumbo v0, "clip-notification-feed"

    const-string/jumbo v1, "clip-notification-tap"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/analytics/ABTesting;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 28
    const-string/jumbo v0, "preview"

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->PREVIEW_KEY:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "groupname"

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->GROUPNAME_KEY:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->TRUE:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->FALSE:Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->FALLBACK_PREVIEW:Z

    .line 40
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->defaultContentMap:Ljava/util/Map;

    const-string/jumbo v1, "preview"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->defaultContentMap:Ljava/util/Map;

    const-string/jumbo v1, "groupname"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/analytics/ABTestNotification;)Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->FALLBACK_PREVIEW:Z

    return v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/analytics/ABTestNotification;Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;ZLjava/lang/String;Ljava/util/HashMap;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/adobe/premiereclip/analytics/ABTestNotification;->postDecidedGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;ZLjava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method private fetchGroupAsync(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;-><init>(Lcom/adobe/premiereclip/analytics/ABTestNotification;Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V

    .line 114
    iget-object v1, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->targetName:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->defaultContentMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->makeTargetRequest(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;)V

    .line 115
    return-void
.end method

.method private postDecidedGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;ZLjava/lang/String;Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 81
    check-cast p1, Lcom/adobe/premiereclip/analytics/ABTestNotification$NotificationFeedABResult;

    invoke-interface {p1, p2, p5}, Lcom/adobe/premiereclip/analytics/ABTestNotification$NotificationFeedABResult;->onABGroupDecided(ZZ)V

    .line 83
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->targetName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3, p4}, Lcom/adobe/premiereclip/metrics/Metrics;->duplicateTargetCallToMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 84
    return-void
.end method


# virtual methods
.method public decideGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V
    .locals 6

    .prologue
    .line 51
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "NOTIFICATION_LAST_QUERY_TIMESTAMP"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 53
    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/analytics/ABTestNotification;->fetchGroupAsync(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V

    .line 65
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "NOTIFICATION_PREVIEW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 57
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "NOTIFICATION_GROUP"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/analytics/ABTestNotification;->fetchGroupAsync(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V

    goto :goto_0

    .line 61
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/analytics/ABTestNotification;->postDecidedGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;ZLjava/lang/String;Ljava/util/HashMap;Z)V

    goto :goto_0
.end method

.method public setABTestSuccess()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/adobe/premiereclip/analytics/ABTestNotification$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/analytics/ABTestNotification$1;-><init>(Lcom/adobe/premiereclip/analytics/ABTestNotification;)V

    .line 76
    iget-object v1, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->successTargetName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->makeTargetRequest(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;)V

    .line 77
    return-void
.end method
