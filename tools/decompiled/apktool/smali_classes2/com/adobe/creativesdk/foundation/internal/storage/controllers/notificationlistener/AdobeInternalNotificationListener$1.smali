.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener$1;
.super Ljava/lang/Object;
.source "AdobeInternalNotificationListener.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 39
    move-object v0, p2

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 40
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v1

    check-cast v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    .line 41
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->access$000(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Observer;

    .line 42
    if-eqz v2, :cond_0

    .line 43
    invoke-interface {v2, p1, p2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 52
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    invoke-static {v2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 47
    if-nez v2, :cond_1

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;->access$100(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/notificationlistener/AdobeInternalNotificationListener;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
