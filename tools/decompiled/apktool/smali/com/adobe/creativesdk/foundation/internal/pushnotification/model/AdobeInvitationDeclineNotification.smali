.class public Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;
.super Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
.source "AdobeInvitationDeclineNotification.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private isRecipient:Z

.field private isSender:Z

.field private recipientDisplayName:Ljava/lang/String;

.field private recipientRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->recipientDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientRole()Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->recipientRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    return-object v0
.end method

.method public isRecipient()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->isRecipient:Z

    return v0
.end method

.method public isSender()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->isSender:Z

    return v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->avatarUrl:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setRecipient(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->isRecipient:Z

    .line 45
    return-void
.end method

.method public setRecipientDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->recipientDisplayName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setRecipientRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->recipientRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    .line 53
    return-void
.end method

.method public setSender(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationDeclineNotification;->isSender:Z

    .line 37
    return-void
.end method
