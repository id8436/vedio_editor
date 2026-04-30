.class public Lcom/google/api/services/drive/Drive$Permissions$Delete;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/permissions/{permissionId}"


# instance fields
.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private permissionId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsTeamDrives:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Permissions;

.field private useDomainAdminAccess:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 4693
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->this$1:Lcom/google/api/services/drive/Drive$Permissions;

    .line 4694
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "DELETE"

    const-string/jumbo v3, "files/{fileId}/permissions/{permissionId}"

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4695
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->fileId:Ljava/lang/String;

    .line 4696
    const-string/jumbo v0, "Required parameter permissionId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->permissionId:Ljava/lang/String;

    .line 4697
    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4741
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4757
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->permissionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsTeamDrives()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 4773
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->supportsTeamDrives:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseDomainAdminAccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 4822
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->useDomainAdminAccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSupportsTeamDrives()Z
    .locals 2

    .prologue
    .line 4803
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->supportsTeamDrives:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->supportsTeamDrives:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 4804
    :cond_0
    const/4 v0, 0x0

    .line 4806
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->supportsTeamDrives:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isUseDomainAdminAccess()Z
    .locals 2

    .prologue
    .line 4858
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->useDomainAdminAccess:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->useDomainAdminAccess:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 4859
    :cond_0
    const/4 v0, 0x0

    .line 4861
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->useDomainAdminAccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 1

    .prologue
    .line 4866
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Delete;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 1

    .prologue
    .line 4701
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Delete;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 1

    .prologue
    .line 4706
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Delete;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 0

    .prologue
    .line 4746
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->fileId:Ljava/lang/String;

    .line 4747
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 1

    .prologue
    .line 4711
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Delete;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 1

    .prologue
    .line 4716
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Delete;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setPermissionId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 0

    .prologue
    .line 4762
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->permissionId:Ljava/lang/String;

    .line 4763
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 1

    .prologue
    .line 4721
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Delete;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 1

    .prologue
    .line 4726
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Delete;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setSupportsTeamDrives(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 0

    .prologue
    .line 4778
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->supportsTeamDrives:Ljava/lang/Boolean;

    .line 4779
    return-object p0
.end method

.method public setUseDomainAdminAccess(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 0

    .prologue
    .line 4831
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Delete;->useDomainAdminAccess:Ljava/lang/Boolean;

    .line 4832
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;
    .locals 1

    .prologue
    .line 4731
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Delete;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4675
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Delete;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Delete;

    move-result-object v0

    return-object v0
.end method
