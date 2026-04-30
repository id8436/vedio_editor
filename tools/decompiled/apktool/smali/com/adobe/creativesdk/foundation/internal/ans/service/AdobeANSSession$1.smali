.class Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$1;
.super Ljava/lang/Object;
.source "AdobeANSSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$1;->val$callback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$1;->val$callback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;->onError()V

    .line 151
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$1;->val$callback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceRegistrationCallback;->onSuccess(Lorg/json/JSONObject;)V

    .line 144
    return-void
.end method
