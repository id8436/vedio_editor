.class public Lcom/google/api/services/drive/Drive$Files$Copy;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/copy"


# instance fields
.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private ignoreDefaultVisibility:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private keepRevisionForever:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private ocrLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsTeamDrives:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Files;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;Lcom/google/api/services/drive/model/File;)V
    .locals 6

    .prologue
    .line 2159
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->this$1:Lcom/google/api/services/drive/Drive$Files;

    .line 2160
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "POST"

    const-string/jumbo v3, "files/{fileId}/copy"

    const-class v5, Lcom/google/api/services/drive/model/File;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2161
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->fileId:Ljava/lang/String;

    .line 2162
    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoreDefaultVisibility()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->ignoreDefaultVisibility:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKeepRevisionForever()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2285
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->keepRevisionForever:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOcrLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->ocrLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsTeamDrives()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->supportsTeamDrives:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isIgnoreDefaultVisibility()Z
    .locals 2

    .prologue
    .line 2268
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->ignoreDefaultVisibility:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->ignoreDefaultVisibility:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 2269
    :cond_0
    const/4 v0, 0x0

    .line 2271
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->ignoreDefaultVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isKeepRevisionForever()Z
    .locals 2

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->keepRevisionForever:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->keepRevisionForever:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 2320
    :cond_0
    const/4 v0, 0x0

    .line 2322
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->keepRevisionForever:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isSupportsTeamDrives()Z
    .locals 2

    .prologue
    .line 2378
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->supportsTeamDrives:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->supportsTeamDrives:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 2379
    :cond_0
    const/4 v0, 0x0

    .line 2381
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->supportsTeamDrives:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Copy;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Copy;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Copy;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 1

    .prologue
    .line 2386
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Copy;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Copy;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 1

    .prologue
    .line 2166
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Copy;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Copy;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 1

    .prologue
    .line 2171
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Copy;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Copy;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 0

    .prologue
    .line 2211
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->fileId:Ljava/lang/String;

    .line 2212
    return-object p0
.end method

.method public setIgnoreDefaultVisibility(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 0

    .prologue
    .line 2240
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->ignoreDefaultVisibility:Ljava/lang/Boolean;

    .line 2241
    return-object p0
.end method

.method public setKeepRevisionForever(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 0

    .prologue
    .line 2293
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->keepRevisionForever:Ljava/lang/Boolean;

    .line 2294
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 1

    .prologue
    .line 2176
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Copy;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Copy;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 1

    .prologue
    .line 2181
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Copy;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Copy;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method

.method public setOcrLanguage(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 0

    .prologue
    .line 2337
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->ocrLanguage:Ljava/lang/String;

    .line 2338
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 1

    .prologue
    .line 2186
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Copy;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Copy;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 1

    .prologue
    .line 2191
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Copy;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Copy;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method

.method public setSupportsTeamDrives(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 0

    .prologue
    .line 2353
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Copy;->supportsTeamDrives:Ljava/lang/Boolean;

    .line 2354
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;
    .locals 1

    .prologue
    .line 2196
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Copy;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2141
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Copy;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Copy;

    move-result-object v0

    return-object v0
.end method
