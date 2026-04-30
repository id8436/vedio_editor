.class Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;
.super Ljava/lang/Object;
.source "AdobeCommentsSession.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$1;)V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;-><init>(Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 385
    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;

    .line 387
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-eq v0, v1, :cond_0

    .line 388
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLoginExternalNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_2

    .line 390
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getSharedInstance()Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->service()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v1

    .line 392
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/auth/AdobeAuthIdentityManagementService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 393
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setSuspended(Z)V

    .line 394
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->getSharedModel()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->login()V

    .line 406
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeNotification;->getId()Lcom/adobe/creativesdk/foundation/internal/notification/IAdobeNotificationID;

    move-result-object v0

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;->AdobeAuthLogoutNotification:Lcom/adobe/creativesdk/foundation/internal/notification/AdobeInternalNotificationID;

    if-ne v0, v1, :cond_1

    .line 398
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession$LoginNotificationObserver;->this$0:Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/comments/AdobeCommentsSession;->service()Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->clearQueuedRequests()V

    .line 400
    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->reconnect()V

    .line 401
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/creativesdk/foundation/internal/net/AdobeNetworkHttpService;->setAccessToken(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->getSharedModel()Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/AdobeCollaborationSessionModel;->logout()V

    goto :goto_0
.end method
