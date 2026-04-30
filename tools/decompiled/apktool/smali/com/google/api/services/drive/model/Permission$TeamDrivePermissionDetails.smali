.class public final Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "Permission.java"


# instance fields
.field private inherited:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private inheritedFrom:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private role:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private teamDrivePermissionType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->clone()Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->clone()Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->clone()Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;

    move-result-object v0

    return-object v0
.end method

.method public getInherited()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->inherited:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInheritedFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->inheritedFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamDrivePermissionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->teamDrivePermissionType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;
    .locals 1

    .prologue
    .line 477
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;

    return-object v0
.end method

.method public setInherited(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->inherited:Ljava/lang/Boolean;

    .line 415
    return-object p0
.end method

.method public setInheritedFrom(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->inheritedFrom:Ljava/lang/String;

    .line 434
    return-object p0
.end method

.method public setRole(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->role:Ljava/lang/String;

    .line 453
    return-object p0
.end method

.method public setTeamDrivePermissionType(Ljava/lang/String;)Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/api/services/drive/model/Permission$TeamDrivePermissionDetails;->teamDrivePermissionType:Ljava/lang/String;

    .line 472
    return-object p0
.end method
