.class public final Lcom/google/api/services/drive/model/About;
.super Lcom/google/api/client/json/GenericJson;
.source "About.java"


# instance fields
.field private appInstalled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private exportFormats:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private folderColorPalette:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private importFormats:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxImportSizes:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private maxUploadSize:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private storageQuota:Lcom/google/api/services/drive/model/About$StorageQuota;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private teamDriveThemes:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/About$TeamDriveThemes;",
            ">;"
        }
    .end annotation
.end field

.field private user:Lcom/google/api/services/drive/model/User;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/google/api/services/drive/model/About$TeamDriveThemes;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 408
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About;->clone()Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About;->clone()Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/About;
    .locals 1

    .prologue
    .line 289
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About;->clone()Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstalled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->appInstalled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getExportFormats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->exportFormats:Ljava/util/Map;

    return-object v0
.end method

.method public getFolderColorPalette()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->folderColorPalette:Ljava/util/List;

    return-object v0
.end method

.method public getImportFormats()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->importFormats:Ljava/util/Map;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxImportSizes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->maxImportSizes:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxUploadSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->maxUploadSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getStorageQuota()Lcom/google/api/services/drive/model/About$StorageQuota;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->storageQuota:Lcom/google/api/services/drive/model/About$StorageQuota;

    return-object v0
.end method

.method public getTeamDriveThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/About$TeamDriveThemes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->teamDriveThemes:Ljava/util/List;

    return-object v0
.end method

.method public getUser()Lcom/google/api/services/drive/model/User;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/api/services/drive/model/About;->user:Lcom/google/api/services/drive/model/User;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About;
    .locals 1

    .prologue
    .line 284
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About;

    return-object v0
.end method

.method public setAppInstalled(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->appInstalled:Ljava/lang/Boolean;

    .line 126
    return-object p0
.end method

.method public setExportFormats(Ljava/util/Map;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->exportFormats:Ljava/util/Map;

    .line 143
    return-object p0
.end method

.method public setFolderColorPalette(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->folderColorPalette:Ljava/util/List;

    .line 160
    return-object p0
.end method

.method public setImportFormats(Ljava/util/Map;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .prologue
    .line 176
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->importFormats:Ljava/util/Map;

    .line 177
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->kind:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public setMaxImportSizes(Ljava/util/Map;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->maxImportSizes:Ljava/util/Map;

    .line 211
    return-object p0
.end method

.method public setMaxUploadSize(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->maxUploadSize:Ljava/lang/Long;

    .line 228
    return-object p0
.end method

.method public setStorageQuota(Lcom/google/api/services/drive/model/About$StorageQuota;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->storageQuota:Lcom/google/api/services/drive/model/About$StorageQuota;

    .line 245
    return-object p0
.end method

.method public setTeamDriveThemes(Ljava/util/List;)Lcom/google/api/services/drive/model/About;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/About$TeamDriveThemes;",
            ">;)",
            "Lcom/google/api/services/drive/model/About;"
        }
    .end annotation

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->teamDriveThemes:Ljava/util/List;

    .line 262
    return-object p0
.end method

.method public setUser(Lcom/google/api/services/drive/model/User;)Lcom/google/api/services/drive/model/About;
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/api/services/drive/model/About;->user:Lcom/google/api/services/drive/model/User;

    .line 279
    return-object p0
.end method
