.class Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$3;
.super Ljava/lang/Object;
.source "AdobeANSSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$3;->this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;->onError()V

    .line 220
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$3;->val$callback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;

    invoke-interface {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationQueryCallback;->onSuccess(Lorg/json/JSONObject;)V

    .line 215
    return-void
.end method
