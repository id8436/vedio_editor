.class Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;
.super Ljava/util/TimerTask;
.source "AdobeCollaborationSessionModel.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

.field triedReconnecting:Z

.field final synthetic val$service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;Ljava/util/Timer;)V
    .locals 1

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->val$service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->triedReconnecting:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->val$service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->cancel()Z

    .line 80
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 97
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->triedReconnecting:Z

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->val$service:Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->reconnect()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->triedReconnecting:Z

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->getDefaultNotificationCenter()Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;

    move-result-object v0

    new-instance v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    sget-object v2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeStorageServiceDisconnectedNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;-><init>(Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeLocalNotificationCenter;->postNotification(Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;)V

    .line 93
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->cancel()Z

    .line 94
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method
