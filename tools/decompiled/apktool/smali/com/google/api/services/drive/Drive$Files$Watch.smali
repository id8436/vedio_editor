.class public Lcom/google/api/services/drive/Drive$Files$Watch;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/Channel;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/watch"


# instance fields
.field private acknowledgeAbuse:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsTeamDrives:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Files;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;Lcom/google/api/services/drive/model/Channel;)V
    .locals 6

    .prologue
    .line 4163
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->this$1:Lcom/google/api/services/drive/Drive$Files;

    .line 4164
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "POST"

    const-string/jumbo v3, "files/{fileId}/watch"

    const-class v5, Lcom/google/api/services/drive/model/Channel;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4165
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->fileId:Ljava/lang/String;

    .line 4166
    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive$Files$Watch;->initializeMediaDownload()V

    .line 4167
    return-void
.end method


# virtual methods
.method public buildHttpRequestUrl()Lcom/google/api/client/http/GenericUrl;
    .locals 4

    .prologue
    .line 4186
    const-string/jumbo v0, "media"

    const-string/jumbo v1, "alt"

    invoke-virtual {p0, v1}, Lcom/google/api/services/drive/Drive$Files$Watch;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive$Files$Watch;->getMediaHttpUploader()Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->this$1:Lcom/google/api/services/drive/Drive$Files;

    iget-object v1, v1, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive;->getRootUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->this$1:Lcom/google/api/services/drive/Drive$Files;

    iget-object v1, v1, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive;->getServicePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4188
    :goto_0
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive$Files$Watch;->getUriTemplate()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, p0, v3}, Lcom/google/api/client/http/UriTemplate;->expand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 4186
    :cond_0
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->this$1:Lcom/google/api/services/drive/Drive$Files;

    iget-object v0, v0, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public executeMedia()Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4181
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->executeMedia()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public executeMediaAndDownloadTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4171
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->executeMediaAndDownloadTo(Ljava/io/OutputStream;)V

    .line 4172
    return-void
.end method

.method public executeMediaAsInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4176
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->executeMediaAsInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getAcknowledgeAbuse()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 4254
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->acknowledgeAbuse:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4234
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsTeamDrives()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 4301
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->supportsTeamDrives:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isAcknowledgeAbuse()Z
    .locals 2

    .prologue
    .line 4288
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->acknowledgeAbuse:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->acknowledgeAbuse:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 4289
    :cond_0
    const/4 v0, 0x0

    .line 4291
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->acknowledgeAbuse:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isSupportsTeamDrives()Z
    .locals 2

    .prologue
    .line 4331
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->supportsTeamDrives:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->supportsTeamDrives:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 4332
    :cond_0
    const/4 v0, 0x0

    .line 4334
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->supportsTeamDrives:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Watch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Watch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Watch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 1

    .prologue
    .line 4339
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Watch;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Watch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method

.method public setAcknowledgeAbuse(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 0

    .prologue
    .line 4262
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->acknowledgeAbuse:Ljava/lang/Boolean;

    .line 4263
    return-object p0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 1

    .prologue
    .line 4194
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Watch;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Watch;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 1

    .prologue
    .line 4199
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Watch;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Watch;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 0

    .prologue
    .line 4239
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->fileId:Ljava/lang/String;

    .line 4240
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 1

    .prologue
    .line 4204
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Watch;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Watch;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 1

    .prologue
    .line 4209
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Watch;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Watch;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 1

    .prologue
    .line 4214
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Watch;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Watch;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 1

    .prologue
    .line 4219
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Watch;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Watch;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method

.method public setSupportsTeamDrives(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 0

    .prologue
    .line 4306
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Watch;->supportsTeamDrives:Ljava/lang/Boolean;

    .line 4307
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;
    .locals 1

    .prologue
    .line 4224
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Watch;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 4145
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Watch;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Watch;

    move-result-object v0

    return-object v0
.end method
