.class public Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;
.super Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
.source "AdobeCollaboratorRoleChangeNotification.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private isSender:Z

.field private previousRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

.field private senderName:Ljava/lang/String;

.field private updatedRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->isSender:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousRole()Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->previousRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    return-object v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->senderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedRole()Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->updatedRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    return-object v0
.end method

.method public isSender()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->isSender:Z

    return v0
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->avatarUrl:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPreviousRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->previousRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    .line 44
    return-void
.end method

.method public setSender(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->isSender:Z

    .line 36
    return-void
.end method

.method public setSenderName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->senderName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setUpdatedRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorRoleChangeNotification;->updatedRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    .line 52
    return-void
.end method
