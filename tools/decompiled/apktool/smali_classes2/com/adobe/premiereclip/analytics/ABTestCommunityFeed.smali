.class public Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;
.super Lcom/adobe/premiereclip/analytics/ABTesting;
.source "ABTestCommunityFeed.java"


# static fields
.field private static final SUCCESS_TARGET_NAME:Ljava/lang/String; = "clip-tap-community-video-2"

.field private static final TAG:Ljava/lang/String; = "ABTestCommunityFeed"

.field private static final TARGET_NAME:Ljava/lang/String; = "clip-community-feed-2"


# instance fields
.field private final FALLBACK_GROUP:Ljava/lang/String;

.field private final FALLBACK_TITLE:Ljava/lang/String;

.field private final FALLBACK_URL:Ljava/lang/String;

.field private final GROUPNAME_KEY:Ljava/lang/String;

.field private final TITLE_KEY:Ljava/lang/String;

.field private final URL_KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v0, "clip-community-feed-2"

    const-string/jumbo v1, "clip-tap-community-video-2"

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/premiereclip/analytics/ABTesting;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 47
    const-string/jumbo v0, "viewTitle"

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->TITLE_KEY:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "groupname"

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->GROUPNAME_KEY:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "url"

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->URL_KEY:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "Community"

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->FALLBACK_GROUP:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "https://www.adobe.com/go/clipcommunityfeed"

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->FALLBACK_URL:Ljava/lang/String;

    .line 58
    const v0, 0x7f0a044d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->FALLBACK_TITLE:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->defaultContentMap:Ljava/util/Map;

    const-string/jumbo v1, "url"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->defaultContentMap:Ljava/util/Map;

    const-string/jumbo v1, "groupname"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->FALLBACK_TITLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->postDecidedGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    return-void
.end method

.method private fetchGroupAsync(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;

    invoke-direct {v0, p0, p1}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;-><init>(Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V

    .line 140
    iget-object v1, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->targetName:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->defaultContentMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->makeTargetRequest(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;)V

    .line 141
    return-void
.end method

.method private postDecidedGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 104
    check-cast p1, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$CommunityFeedABResult;

    invoke-interface {p1, p2, p4, p6}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$CommunityFeedABResult;->onABGroupDecided(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 106
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->targetName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3, p5}, Lcom/adobe/premiereclip/metrics/Metrics;->duplicateTargetCallToMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 107
    return-void
.end method


# virtual methods
.method public decideGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V
    .locals 7

    .prologue
    .line 71
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "COMMUNITY_FEED_LAST_QUERY_TIMESTAMP"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 73
    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 74
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->fetchGroupAsync(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V

    .line 86
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "COMMUNITY_FEED_TITLE"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "COMMUNITY_FEED_URL"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "COMMUNITY_FEED_GROUP"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :cond_1
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->fetchGroupAsync(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V

    goto :goto_0

    .line 82
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->postDecidedGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    goto :goto_0
.end method

.method public setABTestSuccess()V
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$1;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$1;-><init>(Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;)V

    .line 97
    iget-object v1, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->successTargetName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->makeTargetRequest(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;)V

    .line 98
    return-void
.end method
