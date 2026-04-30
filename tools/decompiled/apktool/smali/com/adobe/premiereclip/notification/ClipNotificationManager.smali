.class public Lcom/adobe/premiereclip/notification/ClipNotificationManager;
.super Ljava/lang/Object;
.source "ClipNotificationManager.java"


# static fields
.field public static final JOB_ID:I = 0x3e9

.field public static final NOTIFICATION_END:Ljava/lang/String; = "com.adobe.premiereclip.action.notificationend"

.field public static final NOTIFICATION_ID:I = 0x0

.field public static final NOTIFICATION_RESTART:Ljava/lang/String; = "com.adobe.premiereclip.action.notificationrestart"

.field public static final NOTIFICATION_START:Ljava/lang/String; = "com.adobe.premiereclip.action.notificationstart"

.field private static final REMINDER_TIME_INTERVAL:J = 0x4d3f6400L

.field private static instance:Lcom/adobe/premiereclip/notification/ClipNotificationManager;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->instance:Lcom/adobe/premiereclip/notification/ClipNotificationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private cancelScheduledNotification(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 101
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 107
    :goto_0
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/adobe/premiereclip/ClipPreferences;->setNotificationScheduleTime(J)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/adobe/premiereclip/ClipPreferences;->setNotificationTime(J)V

    .line 111
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 105
    iget-object v1, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->getScheduleIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private closeNotificationIfOpen()V
    .locals 6

    .prologue
    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 115
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 116
    const-string/jumbo v1, "notificationType"

    const-string/jumbo v2, "com.adobe.premiereclip.action.notificationend"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x3e9

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-class v5, Lcom/adobe/premiereclip/notification/ClipNotificationJobService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0x0

    .line 118
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 121
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 129
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-class v2, Lcom/adobe/premiereclip/notification/ClipNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string/jumbo v1, "com.adobe.premiereclip.action.notificationend"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/notification/ClipNotificationManager;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->instance:Lcom/adobe/premiereclip/notification/ClipNotificationManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->instance:Lcom/adobe/premiereclip/notification/ClipNotificationManager;

    .line 35
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->instance:Lcom/adobe/premiereclip/notification/ClipNotificationManager;

    return-object v0
.end method

.method private getScheduleIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-class v2, Lcom/adobe/premiereclip/notification/ClipNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string/jumbo v1, "com.adobe.premiereclip.action.notificationstart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method private scheduleNotification(Z)V
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x4d3f6400

    add-long/2addr v0, v2

    .line 52
    invoke-virtual {p0, v0, v1, p1}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->scheduleNotification(JZ)V

    .line 53
    return-void
.end method


# virtual methods
.method public initNotification(Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->cancelScheduledNotification(Z)V

    .line 40
    invoke-direct {p0}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->closeNotificationIfOpen()V

    .line 41
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->scheduleNotification(Z)V

    .line 42
    return-void
.end method

.method protected postInstantNotification()V
    .locals 6

    .prologue
    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 84
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 85
    const-string/jumbo v1, "notificationType"

    const-string/jumbo v2, "com.adobe.premiereclip.action.notificationstart"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/16 v2, 0x3e9

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-class v5, Lcom/adobe/premiereclip/notification/ClipNotificationJobService;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0x0

    .line 87
    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 90
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->getScheduleIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected scheduleNotification(JZ)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    if-eqz p3, :cond_0

    .line 58
    iget-object v2, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setNotificationScheduleTime(J)V

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/adobe/premiereclip/ClipPreferences;->setNotificationTime(J)V

    .line 61
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 62
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 63
    const-string/jumbo v3, "notificationType"

    const-string/jumbo v4, "com.adobe.premiereclip.action.notificationstart"

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    const/16 v4, 0x3e9

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-class v7, Lcom/adobe/premiereclip/notification/ClipNotificationJobService;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sub-long v4, p1, v0

    .line 65
    invoke-virtual {v3, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    sub-long v0, p1, v0

    .line 66
    invoke-virtual {v3, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 70
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 74
    iget-object v1, p0, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->context:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->getScheduleIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v4, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
