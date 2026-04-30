.class public Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;
.super Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetsBaseEvent;
.source "AdobeAnalyticsETSSendToDesktopEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppSend:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetsBaseEvent;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public trackEnvironment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyComponentName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "send_to_desktop"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyComponentVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->trackServiceAPIDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
