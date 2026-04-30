.class Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$4;
.super Ljava/lang/Object;
.source "AdobeANSSession.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeANSResponseCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

.field final synthetic val$callback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$4;->this$0:Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/adobe/creativesdk/foundation/network/AdobeNetworkException;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;->onError()V

    .line 252
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 244
    const-string/jumbo v0, "unread-count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/ans/service/AdobeANSSession$4;->val$callback:Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;->onSuccess(I)V

    .line 247
    return-void
.end method
