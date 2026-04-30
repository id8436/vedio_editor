.class final Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$11;
.super Ljava/lang/Object;
.source "AdobeNotificationManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeGetAssetHrefCallback;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$11;->val$request:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$11;->val$request:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;->onError()V

    .line 981
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 969
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$200()Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$200()Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$1200(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 971
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$11;->val$request:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;->onSuccess()V

    .line 972
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$200()Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$1200(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$11;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationHandler;->launchHandler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$11;->val$request:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeNotificationOperationRequest;->onError()V

    goto :goto_0
.end method
