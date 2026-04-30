.class Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;
.super Ljava/lang/Object;
.source "ABTestCommunityFeed.java"

# interfaces
.implements Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

.field final synthetic val$abInterface:Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    iput-object p2, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;->val$abInterface:Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 9
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
    .line 113
    const-string/jumbo v0, "ABTestCommunityFeed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "got response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    iget-object v0, v0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "COMMUNITY_FEED_TITLE"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    const-string/jumbo v2, ""

    .line 116
    const-string/jumbo v1, ""

    .line 117
    const-string/jumbo v3, ""

    .line 119
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v0, "viewTitle"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string/jumbo v0, "groupname"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :try_start_1
    const-string/jumbo v3, "url"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 126
    :goto_0
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    invoke-static {v0}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->access$000(Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;)Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string/jumbo v3, "Community"

    .line 129
    const-string/jumbo v4, "https://www.adobe.com/go/clipcommunityfeed"

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    iget-object v1, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;->val$abInterface:Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->access$100(Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 137
    return-void

    .line 123
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v3

    move-object v3, v8

    .line 124
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    iget-object v3, v3, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v3

    const-string/jumbo v4, "COMMUNITY_FEED_LAST_QUERY_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/adobe/premiereclip/ClipPreferences;->setLong(Ljava/lang/String;J)V

    .line 132
    iget-object v3, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    iget-object v3, v3, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v3

    const-string/jumbo v4, "COMMUNITY_FEED_TITLE"

    invoke-virtual {v3, v4, v2}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v3, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    iget-object v3, v3, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v3

    const-string/jumbo v4, "COMMUNITY_FEED_GROUP"

    invoke-virtual {v3, v4, v0}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;

    iget-object v3, v3, Lcom/adobe/premiereclip/analytics/ABTestCommunityFeed;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v3

    const-string/jumbo v4, "COMMUNITY_FEED_URL"

    invoke-virtual {v3, v4, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v1

    goto :goto_1

    .line 136
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 123
    :catch_1
    move-exception v3

    goto :goto_3
.end method
