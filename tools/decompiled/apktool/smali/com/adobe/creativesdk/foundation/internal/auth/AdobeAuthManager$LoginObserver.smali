.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field _loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;)V
    .locals 1

    .prologue
    .line 172
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    .line 173
    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    .line 174
    return-void
.end method


# virtual methods
.method public registerForLogin()V
    .locals 2

    .prologue
    .line 177
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 179
    return-void
.end method

.method public unregisterForLogin()V
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    .line 183
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 184
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 188
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 189
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    .line 192
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;->_loginClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;

    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LoginObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLoginObserver;->onSuccess(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;)V

    goto :goto_0
.end method
