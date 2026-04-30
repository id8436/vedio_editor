.class final Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;
.super Ljava/lang/Object;
.source "AdobeSendToDesktopApplicationAdobeInternal.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic val$application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

.field final synthetic val$asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

.field final synthetic val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field final synthetic val$cloudAsset:Ljava/lang/String;

.field final synthetic val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

.field final synthetic val$extension:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$notificationSession:Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;

.field final synthetic val$sendItemCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$asset:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetFile;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$extension:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$notificationSession:Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$cloudAsset:Ljava/lang/String;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$sendItemCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    iput-object p9, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 6

    .prologue
    .line 382
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 383
    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 384
    new-instance v4, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6$1;

    invoke-direct {v4, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;)V

    .line 460
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;->getTimeIntervalSince1970()J

    move-result-wide v2

    .line 461
    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->access$200(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Ljava/lang/String;JLcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 4

    .prologue
    .line 469
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "Response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    .line 470
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v2, "AdobeSendToDesktopApplication"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$sendItemCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    sget-object v2, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->access$100(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 473
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$6;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 479
    return-void
.end method
