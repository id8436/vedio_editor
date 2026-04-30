.class public Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;
.super Ljava/lang/Object;
.source "AdobePushNotificationQueue.java"


# static fields
.field static _pushNotificationQueue:Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;


# instance fields
.field private _notificationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->_notificationMap:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method public static getPushNotificationQueue()Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->_pushNotificationQueue:Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;

    invoke-direct {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;-><init>()V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->_pushNotificationQueue:Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;

    .line 28
    :cond_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->_pushNotificationQueue:Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;

    return-object v0
.end method


# virtual methods
.method public getReadNotificationsList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->_notificationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    .line 59
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    return-object v1
.end method

.method public handleNotificationResponse(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 40
    :try_start_0
    const-string/jumbo v0, "notifications"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 42
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 44
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 45
    const-string/jumbo v3, "notification-id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    iget-object v3, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->_notificationMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 51
    :cond_0
    return-void
.end method

.method public putNotificationInQueue(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 33
    iget-object v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->_notificationMap:Ljava/util/HashMap;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getNotificationID()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method
