.class Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$NotificationSwitchChangeListener;
.super Ljava/lang/Object;
.source "AdobeNotificationManager.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$NotificationSwitchChangeListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$1;)V
    .locals 0

    .prologue
    .line 1398
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$NotificationSwitchChangeListener;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1402
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 1403
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getInfo()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "notification_state"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1404
    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->setNotificationSwitchStatus(Z)V

    .line 1405
    if-eqz v0, :cond_1

    .line 1407
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$NotificationSwitchChangeListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$300(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$NotificationSwitchChangeListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$600(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$NotificationSwitchChangeListener;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$300(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1411
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->unRegisterDevice()V

    goto :goto_0
.end method
