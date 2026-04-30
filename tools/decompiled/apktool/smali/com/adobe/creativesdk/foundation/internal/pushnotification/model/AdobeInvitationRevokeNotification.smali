.class public Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;
.super Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
.source "AdobeInvitationRevokeNotification.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private recipient:Z

.field private recipientDisplayName:Ljava/lang/String;

.field private recipientRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

.field private sender:Z


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
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->recipientDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientRole()Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->recipientRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    return-object v0
.end method

.method public isRecipient()Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->recipient:Z

    return v0
.end method

.method public isSender()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->sender:Z

    return v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->avatarUrl:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setRecipient(Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->recipient:Z

    .line 45
    return-void
.end method

.method public setRecipientDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->recipientDisplayName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setRecipientRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->recipientRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    .line 53
    return-void
.end method

.method public setSender(Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeInvitationRevokeNotification;->sender:Z

    .line 37
    return-void
.end method
