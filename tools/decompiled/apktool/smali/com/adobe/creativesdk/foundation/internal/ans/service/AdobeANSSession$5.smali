.class Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$5;
.super Ljava/lang/Object;
.source "AdobeANSSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

.field final synthetic val$updateNotificationCallback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$5;->this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$5;->val$updateNotificationCallback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$5;->val$updateNotificationCallback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;->onError()V

    .line 305
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$5;->val$updateNotificationCallback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;->onSuccess(Lorg/json/JSONObject;)V

    .line 300
    return-void
.end method
