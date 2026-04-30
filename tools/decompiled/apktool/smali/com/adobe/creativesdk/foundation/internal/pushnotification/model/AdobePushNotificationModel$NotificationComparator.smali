.class Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel$NotificationComparator;
.super Ljava/lang/Object;
.source "AdobePushNotificationModel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1137
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move v2, v1

    .line 1138
    :goto_0
    if-eqz v2, :cond_2

    .line 1139
    const/4 v0, -0x1

    .line 1144
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    .line 1137
    goto :goto_0

    .line 1140
    :cond_2
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    move v2, v1

    .line 1141
    :goto_2
    if-nez v2, :cond_0

    move v0, v1

    .line 1144
    goto :goto_1

    :cond_3
    move v2, v0

    .line 1140
    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1132
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationModel$NotificationComparator;->compare(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;)I

    move-result v0

    return v0
.end method
