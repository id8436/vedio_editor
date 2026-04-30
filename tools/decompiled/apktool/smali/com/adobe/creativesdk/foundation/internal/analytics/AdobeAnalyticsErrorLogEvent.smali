.class public Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsErrorLogEvent;
.super Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;
.source "AdobeAnalyticsErrorLogEvent.java"


# static fields
.field public static final ADOBE_ANALYTICS_COMPONENT_KEY:Ljava/lang/String; = "event.component"

.field public static final ADOBE_ANALYTICS_ERROR_DESC_KEY:Ljava/lang/String; = "event.error.desc"

.field private static final ADOBE_ANALYTICS_ERROR_EVENT_STR:Ljava/lang/String; = "event.error.csdk.android"

.field public static final ADOBE_ANALYTICS_ERROR_EXTRA_DESC_KEY:Ljava/lang/String; = "event.error.extra_desc"

.field public static final ADOBE_ANALYTICS_METHOD_KEY:Ljava/lang/String; = "event.component.method"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "event.error.csdk.android"

    invoke-direct {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public endAndTrackEvent()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->endAndTrackEvent()V

    .line 22
    return-void
.end method
