.class public abstract Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
.super Ljava/lang/Object;
.source "AdobePushNotification.java"


# instance fields
.field private displayName:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private formattingData:J

.field private formattingNeeded:Z

.field private isNotificationRead:Z

.field private isUser:Z

.field private lastName:Ljava/lang/String;

.field private localState:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

.field private notificationID:Ljava/lang/String;

.field private notificationSubType:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

.field private notificationType:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

.field private region:Ljava/lang/String;

.field private resourceName:Ljava/lang/String;

.field private resourceURL:Ljava/lang/String;

.field private serverState:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

.field private timeStampMessage:I

.field private timestamp:J

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setTimeStampString(J)V
    .locals 13

    .prologue
    const-wide/16 v10, 0x1

    const/4 v9, 0x1

    .line 52
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->timestamp:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 53
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;->ERROR:Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;

    const-string/jumbo v1, "AdobePushNotification"

    const-string/jumbo v2, "Current time should be greater than Notification Time stamp"

    invoke-static {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/utils/logging/AdobeLogger;->log(Lcom/adobe/creativesdk/foundation/internal/utils/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->timestamp:J

    sub-long v0, p1, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 59
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    .line 60
    const-wide/16 v4, 0x18

    div-long v4, v2, v4

    .line 61
    const-wide/16 v6, 0x16d

    div-long v6, v4, v6

    .line 63
    cmp-long v8, v6, v10

    if-ltz v8, :cond_1

    .line 64
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_notification_activity_timestamp_year_multiple:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->timeStampMessage:I

    .line 65
    iput-boolean v9, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingNeeded:Z

    .line 66
    iput-wide v6, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingData:J

    goto :goto_0

    .line 68
    :cond_1
    cmp-long v6, v4, v10

    if-ltz v6, :cond_2

    .line 69
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_notification_activity_timestamp_days_multiple:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->timeStampMessage:I

    .line 70
    iput-boolean v9, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingNeeded:Z

    .line 71
    iput-wide v4, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingData:J

    goto :goto_0

    .line 73
    :cond_2
    cmp-long v4, v2, v10

    if-ltz v4, :cond_3

    .line 74
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_notification_activity_timestamp_hours_multiple:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->timeStampMessage:I

    .line 75
    iput-boolean v9, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingNeeded:Z

    .line 76
    iput-wide v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingData:J

    goto :goto_0

    .line 77
    :cond_3
    cmp-long v2, v0, v10

    if-ltz v2, :cond_4

    .line 78
    sget v2, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_notification_activity_timestamp_minute:I

    iput v2, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->timeStampMessage:I

    .line 79
    iput-boolean v9, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingNeeded:Z

    .line 80
    iput-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingData:J

    goto :goto_0

    .line 82
    :cond_4
    sget v0, Lcom/adobe/creativesdk/foundation/assetux/R$string;->adobe_csdk_notification_activity_timestamp_less_than_minute:I

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->timeStampMessage:I

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingNeeded:Z

    goto :goto_0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattingData()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingData:J

    return-wide v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalState()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->localState:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    return-object v0
.end method

.method public getNotificationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->notificationID:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationSubType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->notificationSubType:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    return-object v0
.end method

.method public getNotificationType()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->notificationType:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->region:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->resourceURL:Ljava/lang/String;

    return-object v0
.end method

.method public getServerState()Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->serverState:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    return-object v0
.end method

.method public getTimeStampStringResource()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->timeStampMessage:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->timestamp:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isFormattingNeeded()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->formattingNeeded:Z

    return v0
.end method

.method public isNotificationRead()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->isNotificationRead:Z

    return v0
.end method

.method public isUser()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->isUser:Z

    return v0
.end method

.method public recalculateTimeStampMessage(J)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->setTimeStampString(J)V

    .line 36
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->displayName:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->firstName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setIsNotificationRead(Z)V
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->isNotificationRead:Z

    .line 153
    return-void
.end method

.method public setIsUser(Z)V
    .locals 0

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->isUser:Z

    .line 189
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->lastName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setLocalState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->localState:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    .line 121
    return-void
.end method

.method public setNotificationID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->notificationID:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->notificationSubType:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    .line 97
    return-void
.end method

.method public setNotificationType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->notificationType:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationType;

    .line 185
    return-void
.end method

.method public setRegion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->region:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->resourceName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setResourceURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->resourceURL:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setServerState(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->serverState:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationState;

    .line 125
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->timestamp:J

    .line 137
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;->userId:Ljava/lang/String;

    .line 201
    return-void
.end method
