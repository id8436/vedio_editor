.class Lcom/adobe/utility/analytics/TrackingUtility$1;
.super Ljava/lang/Object;
.source "TrackingUtility.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/utility/analytics/TrackingUtility;


# direct methods
.method constructor <init>(Lcom/adobe/utility/analytics/TrackingUtility;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adobe/utility/analytics/TrackingUtility$1;->this$0:Lcom/adobe/utility/analytics/TrackingUtility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public trackAction(Ljava/lang/String;Ljava/util/Map;)V
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
    .line 189
    invoke-static {p1, p2}, Lcom/adobe/mobile/Analytics;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    return-void
.end method

.method public trackState(Ljava/lang/String;Ljava/util/Map;)V
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
    .line 184
    invoke-static {p1, p2}, Lcom/adobe/mobile/Analytics;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 185
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
    .line 205
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
    .line 194
    invoke-static {p1, p2}, Lcom/adobe/mobile/Analytics;->trackTimedActionStart(Ljava/lang/String;Ljava/util/Map;)V

    .line 195
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
    .line 199
    invoke-static {p1, p2}, Lcom/adobe/mobile/Analytics;->trackTimedActionUpdate(Ljava/lang/String;Ljava/util/Map;)V

    .line 200
    return-void
.end method
