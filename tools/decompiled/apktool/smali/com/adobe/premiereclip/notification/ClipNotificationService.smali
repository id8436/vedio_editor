.class public Lcom/adobe/premiereclip/notification/ClipNotificationService;
.super Landroid/app/Service;
.source "ClipNotificationService.java"


# instance fields
.field private notificationHelper:Lcom/adobe/premiereclip/notification/NotificationHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 17
    new-instance v0, Lcom/adobe/premiereclip/notification/NotificationHelper;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/notification/NotificationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationService;->notificationHelper:Lcom/adobe/premiereclip/notification/NotificationHelper;

    .line 18
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "ClipService"

    const-string/jumbo v1, "onstartcommand called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/notification/NotificationHelper;->getNotificationType(Ljava/lang/String;)Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/adobe/premiereclip/notification/ClipNotificationService;->notificationHelper:Lcom/adobe/premiereclip/notification/NotificationHelper;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/notification/NotificationHelper;->onStart(Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/premiereclip/notification/ClipNotificationService;->stopSelf()V

    .line 28
    const/4 v0, 0x1

    return v0
.end method
