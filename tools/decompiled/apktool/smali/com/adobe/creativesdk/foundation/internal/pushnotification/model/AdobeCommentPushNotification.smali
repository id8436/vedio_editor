.class public Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;
.super Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
.source "AdobeCommentPushNotification.java"


# instance fields
.field private comment:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;-><init>()V

    .line 7
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;->ADOBE_PUSH_NOTIFICATION_SUB_TYPE_COMMENT:Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->setNotificationSubType(Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotificationSubType;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCommentPushNotification;->comment:Ljava/lang/String;

    .line 16
    return-void
.end method
