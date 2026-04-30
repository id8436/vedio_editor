.class public Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEvent;
.super Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;
.source "AdobeAnalyticsEvent.java"


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;)V
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static addCoreEventsFromClient(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->setCoreParams(Ljava/util/Map;)V

    .line 37
    return-void
.end method


# virtual methods
.method public addCustomEventParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEvent;->data:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public addEventParam(Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEvent;->data:Ljava/util/Map;

    invoke-interface {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public sendEvent()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->endAndTrackEvent()V

    .line 30
    return-void
.end method
