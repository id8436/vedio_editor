.class final Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;
.super Ljava/lang/Object;
.source "AdobeSendToDesktopApplicationAdobeInternal.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic val$application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

.field final synthetic val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field final synthetic val$cloudAsset:Ljava/lang/String;

.field final synthetic val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

.field final synthetic val$imageShareName:Ljava/lang/String;

.field final synthetic val$itemType:Ljava/lang/String;

.field final synthetic val$notificationSession:Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;

.field final synthetic val$sendItemCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$notificationSession:Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$cloudAsset:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$imageShareName:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$itemType:Ljava/lang/String;

    iput-object p7, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$sendItemCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    iput-object p8, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 630
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;->getStatusCode()I

    move-result v0

    .line 631
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_0

    .line 632
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$notificationSession:Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$cloudAsset:Ljava/lang/String;

    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$imageShareName:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$application:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$itemType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;->requestFor(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeCreativeCloudApplication;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;

    move-result-object v1

    .line 633
    if-eqz v1, :cond_1

    .line 637
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :goto_0
    new-instance v2, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8$1;

    invoke-direct {v2, p0}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8$1;-><init>(Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;)V

    .line 669
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$notificationSession:Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;

    sget-object v4, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;->NORMAL:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;

    invoke-virtual {v3, v1, v4, v2, v0}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeNotificationSession;->responseFor(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpRequest;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkRequestPriority;Lcom/adobe/creativesdk/foundation/internal/net/IAdobeNetworkCompletionHandler;Landroid/os/Handler;)Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpTaskHandle;

    .line 678
    :cond_0
    :goto_1
    return-void

    .line 638
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 639
    goto :goto_0

    .line 672
    :cond_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_UNEXPECTED_RESPONSE:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    const-string/jumbo v1, "Unexpected Error"

    invoke-static {v0, v6, v1}, Lcom/adobe/creativesdk/foundation/internal/sendtodesktop/AdobeSendToDesktopErrorUtils;->createSendToDesktopError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    .line 673
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$sendItemCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 674
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 4

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getData()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "Response"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    .line 683
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$sendItemCallback:Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;

    sget-object v2, Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;->ADOBE_SEND_TO_DESKTOP_ERROR_CODE_PUSH_NOTIFICATION_ERROR:Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->access$100(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopErrorCode;Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/sendtodesktop/IAdobeSendToDesktopCallBack;->onError(Lcom/adobe/creativesdk/foundation/sendtodesktop/AdobeSendToDesktopException;)V

    .line 684
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$8;->val$etsEvent:Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;

    const-string/jumbo v1, "failure"

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/analytics/AdobeAnalyticsETSSendToDesktopEvent;->endAndTrackEventWithErrorCode(Ljava/lang/String;)V

    .line 685
    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 689
    return-void
.end method
