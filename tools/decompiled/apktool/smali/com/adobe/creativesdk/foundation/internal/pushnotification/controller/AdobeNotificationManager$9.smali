.class Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$9;
.super Ljava/lang/Object;
.source "AdobeNotificationManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/pushnotification/delegates/IAdobeUpdateNotificationCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 794
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$9;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    .prologue
    .line 803
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 797
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->getPushNotificationQueue()Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/utils/AdobePushNotificationQueue;->handleNotificationResponse(Lorg/json/JSONObject;)V

    .line 798
    return-void
.end method
