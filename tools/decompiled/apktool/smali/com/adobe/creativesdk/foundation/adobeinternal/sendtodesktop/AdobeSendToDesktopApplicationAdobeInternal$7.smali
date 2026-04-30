.class final Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;
.super Ljava/lang/Object;
.source "AdobeSendToDesktopApplicationAdobeInternal.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/storage/model/services/AdobeStorageSession$IStorageResponseCallback;


# instance fields
.field final synthetic val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field final synthetic val$monitor:Ljava/lang/String;

.field final synthetic val$notificationCallBack:Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;

.field final synthetic val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$monitor:Ljava/lang/String;

    iput-wide p2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$startTime:J

    iput-object p4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$notificationCallBack:Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;

    iput-object p5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object p6, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V
    .locals 6

    .prologue
    .line 544
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$monitor:Ljava/lang/String;

    iget-wide v2, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$startTime:J

    iget-object v4, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$notificationCallBack:Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;

    iget-object v5, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal;->access$200(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;Ljava/lang/String;JLcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 545
    return-void
.end method

.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 3

    .prologue
    .line 549
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobeSendToDesktopApplication"

    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$notificationCallBack:Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/AdobeSendToDesktopApplicationAdobeInternal$7;->val$response:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/sendtodesktop/IAdobeSendToDesktopNotificationCallBack;->onError(Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpResponse;)V

    .line 552
    return-void
.end method

.method public onProgress(D)V
    .locals 0

    .prologue
    .line 557
    return-void
.end method
