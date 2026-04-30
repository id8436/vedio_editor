.class public Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;
.super Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobePushNotification;
.source "AdobeCollaboratorDeleteNotification.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private isALeaveEvent:Z

.field private isRemoved:Z

.field private isRemover:Z

.field private removedDisplayName:Ljava/lang/String;

.field private removedRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;


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
    .line 41
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRemovedDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->removedDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getRemovedRole()Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->removedRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    return-object v0
.end method

.method public isALeaveEvent()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->isALeaveEvent:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->isRemoved:Z

    return v0
.end method

.method public isRemover()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->isRemover:Z

    return v0
.end method

.method public setALeaveEvent(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->isALeaveEvent:Z

    .line 62
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->avatarUrl:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setRemoved(Z)V
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->isRemoved:Z

    .line 38
    return-void
.end method

.method public setRemovedDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->removedDisplayName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setRemovedRole(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->removedRole:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    .line 22
    return-void
.end method

.method public setRemover(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/pushnotification/model/AdobeCollaboratorDeleteNotification;->isRemover:Z

    .line 54
    return-void
.end method
