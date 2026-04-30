.class public Lcom/google/api/services/drive/Drive$Permissions$Get;
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
    .line 4905
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->this$1:Lcom/google/api/services/drive/Drive$Permissions;

    .line 4906
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Permissions;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "GET"

    const-string/jumbo v3, "files/{fileId}/permissions/{permissionId}"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/drive/model/Permission;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4907
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->fileId:Ljava/lang/String;

    .line 4908
    const-string/jumbo v0, "Required parameter permissionId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->permissionId:Ljava/lang/String;

    .line 4909
    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4918
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4913
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4963
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4979
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->permissionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsTeamDrives()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 4995
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->supportsTeamDrives:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseDomainAdminAccess()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 5044
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->useDomainAdminAccess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSupportsTeamDrives()Z
    .locals 2

    .prologue
    .line 5025
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->supportsTeamDrives:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->supportsTeamDrives:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 5026
    :cond_0
    const/4 v0, 0x0

    .line 5028
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->supportsTeamDrives:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isUseDomainAdminAccess()Z
    .locals 2

    .prologue
    .line 5080
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->useDomainAdminAccess:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->useDomainAdminAccess:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 5081
    :cond_0
    const/4 v0, 0x0

    .line 5083
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->useDomainAdminAccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 1

    .prologue
    .line 5088
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Get;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Permissions$Get;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 1

    .prologue
    .line 4923
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Get;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Get;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 1

    .prologue
    .line 4928
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Get;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Get;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 0

    .prologue
    .line 4968
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->fileId:Ljava/lang/String;

    .line 4969
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 1

    .prologue
    .line 4933
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Get;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Get;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 1

    .prologue
    .line 4938
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Get;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Get;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method

.method public setPermissionId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 0

    .prologue
    .line 4984
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->permissionId:Ljava/lang/String;

    .line 4985
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 1

    .prologue
    .line 4943
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Get;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Get;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 1

    .prologue
    .line 4948
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Get;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Get;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method

.method public setSupportsTeamDrives(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 0

    .prologue
    .line 5000
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->supportsTeamDrives:Ljava/lang/Boolean;

    .line 5001
    return-object p0
.end method

.method public setUseDomainAdminAccess(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 0

    .prologue
    .line 5053
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Permissions$Get;->useDomainAdminAccess:Ljava/lang/Boolean;

    .line 5054
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;
    .locals 1

    .prologue
    .line 4953
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Permissions$Get;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Permissions$Get;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Permissions$Get;

    move-result-object v0

    return-object v0
.end method
