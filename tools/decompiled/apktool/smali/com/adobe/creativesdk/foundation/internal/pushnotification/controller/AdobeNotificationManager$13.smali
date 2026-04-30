.class final Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$13;
.super Ljava/lang/Object;
.source "AdobeNotificationManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;


# instance fields
.field final synthetic val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

.field final synthetic val$request:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;

.field final synthetic val$requestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$13;->val$requestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$13;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$13;->val$request:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$13;->val$request:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;->onError()V

    .line 1054
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1047
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1048
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$13;->val$requestCallback:Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;

    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/utils/AdobeUxUtilMainUIThreadHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$13;->val$cloud:Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;

    invoke-static {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/storage/AdobeAssetFileInternal;->createFromURL(Ljava/lang/String;Lcom/adobe/creativesdk/foundation/storage/IAdobeGenericRequestCallback;Landroid/os/Handler;Lcom/adobe/creativesdk/foundation/adobeinternal/cloud/AdobeCloud;)V

    .line 1049
    return-void
.end method
