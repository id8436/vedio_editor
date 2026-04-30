.class public final Lcom/google/api/services/drive/model/Change;
.super Lcom/google/api/client/json/GenericJson;
.source "Change.java"


# instance fields
.field private file:Lcom/google/api/services/drive/model/File;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private removed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private teamDrive:Lcom/google/api/services/drive/model/TeamDrive;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private teamDriveId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private time:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Change;->clone()Lcom/google/api/services/drive/model/Change;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Change;->clone()Lcom/google/api/services/drive/model/Change;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/Change;
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Change;

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
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Change;->clone()Lcom/google/api/services/drive/model/Change;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/google/api/services/drive/model/File;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/api/services/drive/model/Change;->file:Lcom/google/api/services/drive/model/File;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/api/services/drive/model/Change;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/api/services/drive/model/Change;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoved()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/api/services/drive/model/Change;->removed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTeamDrive()Lcom/google/api/services/drive/model/TeamDrive;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/api/services/drive/model/Change;->teamDrive:Lcom/google/api/services/drive/model/TeamDrive;

    return-object v0
.end method

.method public getTeamDriveId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/api/services/drive/model/Change;->teamDriveId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/api/services/drive/model/Change;->time:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/api/services/drive/model/Change;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Change;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Change;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Change;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Change;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Change;
    .locals 1

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Change;

    return-object v0
.end method

.method public setFile(Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/model/Change;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/api/services/drive/model/Change;->file:Lcom/google/api/services/drive/model/File;

    .line 111
    return-object p0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/model/Change;
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/api/services/drive/model/Change;->fileId:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/Change;
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/api/services/drive/model/Change;->kind:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setRemoved(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/Change;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/api/services/drive/model/Change;->removed:Ljava/lang/Boolean;

    .line 164
    return-object p0
.end method

.method public setTeamDrive(Lcom/google/api/services/drive/model/TeamDrive;)Lcom/google/api/services/drive/model/Change;
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/api/services/drive/model/Change;->teamDrive:Lcom/google/api/services/drive/model/TeamDrive;

    .line 183
    return-object p0
.end method

.method public setTeamDriveId(Ljava/lang/String;)Lcom/google/api/services/drive/model/Change;
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/api/services/drive/model/Change;->teamDriveId:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public setTime(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/drive/model/Change;
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/api/services/drive/model/Change;->time:Lcom/google/api/client/util/DateTime;

    .line 217
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/drive/model/Change;
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/google/api/services/drive/model/Change;->type:Ljava/lang/String;

    .line 234
    return-object p0
.end method
