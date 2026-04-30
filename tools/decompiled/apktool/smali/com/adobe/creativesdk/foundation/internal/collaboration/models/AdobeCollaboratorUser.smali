.class public abstract Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;
.super Ljava/lang/Object;
.source "AdobeCollaboratorUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private collaborationType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

.field private isInvite:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->ADOBE_COLLABORATION_TYPE_EDITOR:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    invoke-virtual {p0, v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->setCollaborationType(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V

    .line 11
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->isInvite:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->getCollaborationTypeFromString(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->collaborationType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    .line 16
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCollaborationType()Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->collaborationType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    return-object v0
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public isInvite()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->isInvite:Z

    return v0
.end method

.method public isOwner()Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->isInvite()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCollaborationType(Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->collaborationType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    .line 42
    return-void
.end method

.method public setIsInvite(Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->isInvite:Z

    .line 28
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->isInvite:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->collaborationType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaboratorUser;->collaborationType:Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;

    invoke-virtual {v0}, Lcom/adobe/creativesdk/foundation/internal/collaboration/models/AdobeCollaborationRole;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method
