.class Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$LoginNotificationObserver;
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
    .line 1366
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$LoginNotificationObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$1;)V
    .locals 0

    .prologue
    .line 1366
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$LoginNotificationObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1369
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 1371
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-eq v0, v1, :cond_0

    .line 1372
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_2

    .line 1373
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->clearSharedPreference()V

    .line 1374
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$LoginNotificationObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$600(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    .line 1380
    :cond_1
    :goto_0
    return-void

    .line 1375
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_1

    .line 1376
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel;->clearSharedPreference()V

    .line 1377
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$2300()V

    goto :goto_0
.end method
