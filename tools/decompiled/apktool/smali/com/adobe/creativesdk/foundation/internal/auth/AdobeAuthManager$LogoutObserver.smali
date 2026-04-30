.class Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;
.super Ljava/lang/Object;
.source "AdobeAuthManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field _logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;->_logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    .line 207
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;->_logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    .line 208
    return-void
.end method


# virtual methods
.method public registerForLogout()V
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    .line 212
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->addObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 213
    return-void
.end method

.method public unregisterForLogout()V
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    .line 217
    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    invoke-virtual {v0, v1, p0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->removeObserver(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Observer;)V

    .line 218
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 222
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 223
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "Error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;

    .line 226
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;->_logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    invoke-interface {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;->onError(Lcom/adobe/creativesdk/foundation/auth/AdobeAuthException;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthManager$LogoutObserver;->_logoutClient:Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;

    invoke-interface {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/IAdobeAuthLogoutObserver;->onSuccess()V

    goto :goto_0
.end method
