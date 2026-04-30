.class public Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;
.super Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;
.source "AdobeAnalyticsETSAuthEvent.java"


# static fields
.field public static final ADOBE_ETS_ENVIRONMENT_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final ADOBE_ETS_ENVIRONMENT_LOGIN_SSO:Ljava/lang/String; = "sso"

.field public static final ADOBE_ETS_ENVIRONMENT_REAUTHENTICATE:Ljava/lang/String; = "reauthenticate"

.field public static final ADOBE_ETS_ENVIRONMENT_REMOVE_ACCOUNT:Ljava/lang/String; = "remove_account"

.field public static final ADOBE_ETS_ENVIRONMENT_SAVE_EXISTING_ACCOUNT:Ljava/lang/String; = "save_account"

.field public static final ADOBE_ETS_ENVIRONMENT_USERPROFILE:Ljava/lang/String; = "user_profile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public endAndTrackEvent()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyComponentName:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->AdobeEventPropertyComponentVersion:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Environment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adobe/creativesdk/foundation/AdobeCSDKFoundation;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-super {p0}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSEvent;->endAndTrackEvent()V

    .line 49
    return-void
.end method

.method public trackError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyError:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthErrorCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyErrorDescription:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public trackError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyError:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->data:Ljava/util/Map;

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertyErrorDescription:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public trackSSO()V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->AdobeEventPropertySubType:Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/adobeinternal/analytics/AdobeAnalyticsEventParams$Core;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sso"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSAuthEvent;->addEventParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
