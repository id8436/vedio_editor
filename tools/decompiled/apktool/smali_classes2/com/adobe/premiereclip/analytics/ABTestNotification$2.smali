.class Lcom/adobe/premiereclip/analytics/ABTestNotification$2;
.super Ljava/lang/Object;
.source "ABTestNotification.java"

# interfaces
.implements Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/analytics/ABTestNotification;

.field final synthetic val$abInterface:Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/analytics/ABTestNotification;Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestNotification;

    iput-object p2, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;->val$abInterface:Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;

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
    .line 90
    const-string/jumbo v0, "ABTestNotification"

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

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestNotification;

    iget-object v0, v0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "NOTIFICATION_PREVIEW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 93
    const-string/jumbo v3, ""

    .line 94
    const-string/jumbo v1, ""

    .line 96
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "preview"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 98
    :try_start_1
    const-string/jumbo v1, "groupname"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 102
    :goto_0
    const-string/jumbo v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestNotification;

    invoke-static {v0}, Lcom/adobe/premiereclip/analytics/ABTestNotification;->access$000(Lcom/adobe/premiereclip/analytics/ABTestNotification;)Z

    move-result v2

    .line 110
    :goto_1
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestNotification;

    iget-object v1, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;->val$abInterface:Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;

    xor-int v5, v4, v2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/analytics/ABTestNotification;->access$100(Lcom/adobe/premiereclip/analytics/ABTestNotification;Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;ZLjava/lang/String;Ljava/util/HashMap;Z)V

    .line 111
    return-void

    .line 99
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 100
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 105
    :cond_1
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 106
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestNotification;

    iget-object v0, v0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "NOTIFICATION_LAST_QUERY_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v1, v6, v7}, Lcom/adobe/premiereclip/ClipPreferences;->setLong(Ljava/lang/String;J)V

    .line 107
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestNotification;

    iget-object v0, v0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "NOTIFICATION_PREVIEW"

    invoke-virtual {v0, v1, v2}, Lcom/adobe/premiereclip/ClipPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/analytics/ABTestNotification$2;->this$0:Lcom/adobe/premiereclip/analytics/ABTestNotification;

    iget-object v0, v0, Lcom/adobe/premiereclip/analytics/ABTestNotification;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    const-string/jumbo v1, "NOTIFICATION_GROUP"

    invoke-virtual {v0, v1, v3}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :catch_1
    move-exception v1

    goto :goto_2
.end method
