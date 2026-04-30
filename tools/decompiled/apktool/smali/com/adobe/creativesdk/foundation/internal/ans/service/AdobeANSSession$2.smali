.class Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$2;
.super Ljava/lang/Object;
.source "AdobeANSSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$2;->this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$2;->val$callback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$2;->val$callback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;->onError()V

    .line 183
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$2;->val$callback:Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeDeviceUnregisterCallback;->onSuccess()V

    .line 177
    return-void
.end method
