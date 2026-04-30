.class public Lcom/google/api/services/drive/Drive$Files$Export;
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
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/export"


# instance fields
.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Files;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Files;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2984
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Export;->this$1:Lcom/google/api/services/drive/Drive$Files;

    .line 2985
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "GET"

    const-string/jumbo v3, "files/{fileId}/export"

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2986
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Export;->fileId:Ljava/lang/String;

    .line 2987
    const-string/jumbo v0, "Required parameter mimeType must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Export;->mimeType:Ljava/lang/String;

    .line 2988
    invoke-virtual {p0}, Lcom/google/api/services/drive/Drive$Files$Export;->initializeMediaDownload()V

    .line 2989
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
    .line 3013
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeMedia()Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3003
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
    .line 2993
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->executeMediaAndDownloadTo(Ljava/io/OutputStream;)V

    .line 2994
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
    .line 2998
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->executeMediaAsInputStream()Ljava/io/InputStream;

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
    .line 3008
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Export;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Files$Export;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Export;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Export;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Export;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 1

    .prologue
    .line 3085
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Export;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$Export;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 1

    .prologue
    .line 3018
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Export;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Export;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 1

    .prologue
    .line 3023
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Export;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Export;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 0

    .prologue
    .line 3063
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Export;->fileId:Ljava/lang/String;

    .line 3064
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 1

    .prologue
    .line 3028
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Export;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Export;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 0

    .prologue
    .line 3079
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$Export;->mimeType:Ljava/lang/String;

    .line 3080
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 1

    .prologue
    .line 3033
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Export;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Export;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 1

    .prologue
    .line 3038
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Export;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Export;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 1

    .prologue
    .line 3043
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Export;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Export;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;
    .locals 1

    .prologue
    .line 3048
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$Export;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2965
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$Export;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Export;

    move-result-object v0

    return-object v0
.end method
