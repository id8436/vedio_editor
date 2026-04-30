.class final Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$4;
.super Ljava/lang/Object;
.source "AdobeNotificationManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    .prologue
    .line 621
    return-void
.end method

.method public onSuccess(I)V
    .locals 1

    .prologue
    .line 614
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$200()Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$200()Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$402(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;I)I

    .line 616
    :cond_0
    return-void
.end method
