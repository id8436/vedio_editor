.class public Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;
.super Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserBaseEvent;
.source "AdobeAnalyticsETSAssetBrowserViewEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->AdobeEventTypeAppView:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Type;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserBaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAssetBrowserViewEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$UI;->AdobeEventPropertyUiViewType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$UI;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$UI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method
