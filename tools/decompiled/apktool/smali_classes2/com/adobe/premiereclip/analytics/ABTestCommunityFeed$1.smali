.class Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$1;
.super Ljava/lang/Object;
.source "ABTestCommunityFeed.java"

# interfaces
.implements Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$1;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    const-string/jumbo v0, "ABTestCommunityFeed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set success, got response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$1;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    iget-object v0, v0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "COMMUNITY_FEED_GROUP"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {}, Lcom/adobe/premiereclip/metrics/Metrics;->sharedInstance()Lcom/adobe/premiereclip/metrics/Metrics;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$1;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    iget-object v2, v2, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->successTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2}, Lcom/adobe/premiereclip/metrics/Metrics;->duplicateTargetCallToMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 95
    return-void
.end method
