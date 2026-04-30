.class public Lcom/adobe/creativeapps/settings/analytics/AppAnalytics;
.super Ljava/lang/Object;
.source "AppAnalytics.java"


# static fields
.field protected static _analyticsSessionDelegate:Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

.field protected static _currentContext:Landroid/content/Context;

.field protected static _dict:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected static _sendUserReports:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/adobe/creativeapps/settings/analytics/AppAnalytics;->_sendUserReports:Ljava/lang/Boolean;

    .line 13
    sput-object v1, Lcom/adobe/creativeapps/settings/analytics/AppAnalytics;->_analyticsSessionDelegate:Lcom/adobe/creativesdk/foundation/internal/analytics/IAdobeAnalyticsSessionCallback;

    .line 14
    sput-object v1, Lcom/adobe/creativeapps/settings/analytics/AppAnalytics;->_currentContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendUserReports()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/adobe/creativeapps/settings/analytics/AppAnalytics;->_sendUserReports:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static SetSendUserReports(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public static initAnalyticsSession(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public static setAnalyticsDebugMode(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public static startAnalyticsSession(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "Start Analytics needs to be implemented"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    return-void
.end method

.method public static stopAnalyticsSession(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "Stop Analytics needs to be implemented"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    return-void
.end method
