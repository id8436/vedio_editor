.class public Lcom/adobe/premiereclip/notification/ClipNotificationJobService;
.super Landroid/app/job/JobService;
.source "ClipNotificationJobService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private notificationHelper:Lcom/adobe/premiereclip/notification/NotificationHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 15
    new-instance v0, Lcom/adobe/premiereclip/notification/NotificationHelper;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/notification/NotificationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationJobService;->notificationHelper:Lcom/adobe/premiereclip/notification/NotificationHelper;

    .line 16
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 20
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "notificationType"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "notificationType"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    invoke-static {v0}, Lcom/adobe/premiereclip/notification/NotificationHelper;->getNotificationType(Ljava/lang/String;)Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/adobe/premiereclip/notification/ClipNotificationJobService;->notificationHelper:Lcom/adobe/premiereclip/notification/NotificationHelper;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/notification/NotificationHelper;->onStart(Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;)V

    .line 24
    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method
