.class public Lcom/adobe/premiereclip/notification/DeviceBootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceBootBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 21
    const-string/jumbo v0, "ClipNotification"

    const-string/jumbo v1, "device boot!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    invoke-static {p1}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getNotificationTime()J

    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 26
    invoke-static {p1}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/notification/ClipNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->postInstantNotification()V

    .line 27
    const-string/jumbo v0, "ClipNotification"

    const-string/jumbo v1, "starting service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_1
    :goto_0
    return-void

    .line 29
    :cond_2
    invoke-static {p1}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/notification/ClipNotificationManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->scheduleNotification(JZ)V

    .line 30
    const-string/jumbo v0, "ClipNotification"

    const-string/jumbo v1, "scheduling notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
