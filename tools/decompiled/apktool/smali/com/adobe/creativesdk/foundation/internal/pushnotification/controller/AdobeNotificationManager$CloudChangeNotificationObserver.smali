.class Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$CloudChangeNotificationObserver;
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
    .line 1384
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$CloudChangeNotificationObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$1;)V
    .locals 0

    .prologue
    .line 1384
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$CloudChangeNotificationObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1389
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 1390
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeNotificationManagerSwitchedToPrivateCloudNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$CloudChangeNotificationObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$2400(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    .line 1394
    :goto_0
    return-void

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$CloudChangeNotificationObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$2500(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    goto :goto_0
.end method
