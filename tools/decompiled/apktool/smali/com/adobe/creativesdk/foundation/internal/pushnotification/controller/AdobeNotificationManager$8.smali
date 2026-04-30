.class Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$8;
.super Ljava/lang/Object;
.source "AdobeNotificationManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/internal/ans/delegates/IAdobeNotificationUnreadCountCallback;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V
    .locals 0

    .prologue
    .line 766
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$8;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$8;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$1000(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    .line 783
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$8;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$1100(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    .line 785
    return-void
.end method

.method public onSuccess(I)V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$8;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0, p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$402(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;I)I

    .line 772
    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$900(I)V

    .line 774
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$8;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$1000(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    .line 775
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager$8;->this$0:Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;->access$1100(Lcom/adobe/creativesdk/foundation/internal/pushnotification/controller/AdobeNotificationManager;)V

    .line 777
    return-void
.end method
