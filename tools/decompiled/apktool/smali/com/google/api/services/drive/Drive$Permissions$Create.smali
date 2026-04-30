.class public Lcom/google/api/services/drive/Drive$Permissions$Create;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/permissions"


# instance fields
.field private emailMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private sendNotificationEmail:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsTeamDrives:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Permissions;

.field private transferOwnership:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private useDomainAdminAccess:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)V
    .locals 6

    .prologue
    .line 4401
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->this$1:Lcom/google/api/services/drive/Drive$Permissions;

    .line 4402
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "POST"

    const-string/jumbo v3, "files/{fileId}/permissions"

    const-class v5, Lcom/google/api/services/drive/model/Permission;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4403
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->fileId:Ljava/lang/String;

    .line 4404
    const-string/jumbo v0, "content"

    invoke-virtual {p0, p3, v0}, Lcom/google/api/services/drive/Drive$Permissions$Create;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4405
    invoke-virtual {p3}, Lcom/google/api/services/drive/model/Permission;->getRole()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Permission.getRole()"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/services/drive/Drive$Permissions$Create;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4406
    const-string/jumbo v0, "content"

    invoke-virtual {p0, p3, v0}, Lcom/google/api/services/drive/Drive$Permissions$Create;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4407
    invoke-virtual {p3}, Lcom/google/api/services/drive/model/Permission;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Permission.getType()"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/services/drive/Drive$Permissions$Create;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4408
    return-void
.end method


# virtual methods
.method public getEmailMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4468
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->emailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4452
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendNotificationEmail()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 4490
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->sendNotificationEmail:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSupportsTeamDrives()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 4510
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->supportsTeamDrives:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTransferOwnership()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 4557
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->transferOwnership:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseDomainAdminAccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 4610
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->useDomainAdminAccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSupportsTeamDrives()Z
    .locals 2

    .prologue
    .line 4540
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->supportsTeamDrives:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->supportsTeamDrives:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 4541
    :cond_0
    const/4 v0, 0x0

    .line 4543
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->supportsTeamDrives:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isTransferOwnership()Z
    .locals 2

    .prologue
    .line 4591
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->transferOwnership:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->transferOwnership:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 4592
    :cond_0
    const/4 v0, 0x0

    .line 4594
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->transferOwnership:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isUseDomainAdminAccess()Z
    .locals 2

    .prologue
    .line 4646
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->useDomainAdminAccess:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->useDomainAdminAccess:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 4647
    :cond_0
    const/4 v0, 0x0

    .line 4649
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->useDomainAdminAccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 1

    .prologue
    .line 4654
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Create;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 1

    .prologue
    .line 4412
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Create;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Create;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method

.method public setEmailMessage(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 0

    .prologue
    .line 4473
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->emailMessage:Ljava/lang/String;

    .line 4474
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 1

    .prologue
    .line 4417
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Create;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Create;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 0

    .prologue
    .line 4457
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->fileId:Ljava/lang/String;

    .line 4458
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 1

    .prologue
    .line 4422
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Create;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Create;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 1

    .prologue
    .line 4427
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Create;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Create;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 1

    .prologue
    .line 4432
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Create;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Create;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 1

    .prologue
    .line 4437
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Create;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Create;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method

.method public setSendNotificationEmail(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 0

    .prologue
    .line 4499
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->sendNotificationEmail:Ljava/lang/Boolean;

    .line 4500
    return-object p0
.end method

.method public setSupportsTeamDrives(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 0

    .prologue
    .line 4515
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->supportsTeamDrives:Ljava/lang/Boolean;

    .line 4516
    return-object p0
.end method

.method public setTransferOwnership(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 0

    .prologue
    .line 4565
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->transferOwnership:Ljava/lang/Boolean;

    .line 4566
    return-object p0
.end method

.method public setUseDomainAdminAccess(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 0

    .prologue
    .line 4619
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Create;->useDomainAdminAccess:Ljava/lang/Boolean;

    .line 4620
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;
    .locals 1

    .prologue
    .line 4442
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Create;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4383
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Create;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Create;

    move-result-object v0

    return-object v0
.end method
