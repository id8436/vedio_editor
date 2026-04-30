.class public Lcom/google/api/services/drive/Drive$Permissions$Update;
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

.field private removeExpiration:Ljava/lang/Boolean;
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
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Permissions;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Permission;)V
    .locals 6

    .prologue
    .line 5383
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->this$1:Lcom/google/api/services/drive/Drive$Permissions;

    .line 5384
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "PATCH"

    const-string/jumbo v3, "files/{fileId}/permissions/{permissionId}"

    const-class v5, Lcom/google/api/services/drive/model/Permission;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5385
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->fileId:Ljava/lang/String;

    .line 5386
    const-string/jumbo v0, "Required parameter permissionId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->permissionId:Ljava/lang/String;

    .line 5387
    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5431
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5447
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->permissionId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveExpiration()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 5463
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->removeExpiration:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSupportsTeamDrives()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 5506
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->supportsTeamDrives:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTransferOwnership()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 5553
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->transferOwnership:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseDomainAdminAccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 5606
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->useDomainAdminAccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isRemoveExpiration()Z
    .locals 2

    .prologue
    .line 5493
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->removeExpiration:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->removeExpiration:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 5494
    :cond_0
    const/4 v0, 0x0

    .line 5496
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->removeExpiration:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isSupportsTeamDrives()Z
    .locals 2

    .prologue
    .line 5536
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->supportsTeamDrives:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->supportsTeamDrives:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 5537
    :cond_0
    const/4 v0, 0x0

    .line 5539
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->supportsTeamDrives:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isTransferOwnership()Z
    .locals 2

    .prologue
    .line 5587
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->transferOwnership:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->transferOwnership:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 5588
    :cond_0
    const/4 v0, 0x0

    .line 5590
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->transferOwnership:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isUseDomainAdminAccess()Z
    .locals 2

    .prologue
    .line 5642
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->useDomainAdminAccess:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->useDomainAdminAccess:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 5643
    :cond_0
    const/4 v0, 0x0

    .line 5645
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->useDomainAdminAccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 1

    .prologue
    .line 5650
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 1

    .prologue
    .line 5391
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Update;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 1

    .prologue
    .line 5396
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 0

    .prologue
    .line 5436
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->fileId:Ljava/lang/String;

    .line 5437
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 1

    .prologue
    .line 5401
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Update;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 1

    .prologue
    .line 5406
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Update;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setPermissionId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 0

    .prologue
    .line 5452
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->permissionId:Ljava/lang/String;

    .line 5453
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 1

    .prologue
    .line 5411
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Update;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 1

    .prologue
    .line 5416
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Update;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setRemoveExpiration(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 0

    .prologue
    .line 5468
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->removeExpiration:Ljava/lang/Boolean;

    .line 5469
    return-object p0
.end method

.method public setSupportsTeamDrives(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 0

    .prologue
    .line 5511
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->supportsTeamDrives:Ljava/lang/Boolean;

    .line 5512
    return-object p0
.end method

.method public setTransferOwnership(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 0

    .prologue
    .line 5561
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->transferOwnership:Ljava/lang/Boolean;

    .line 5562
    return-object p0
.end method

.method public setUseDomainAdminAccess(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 0

    .prologue
    .line 5615
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Update;->useDomainAdminAccess:Ljava/lang/Boolean;

    .line 5616
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;
    .locals 1

    .prologue
    .line 5421
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Update;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5364
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Update;

    move-result-object v0

    return-object v0
.end method
