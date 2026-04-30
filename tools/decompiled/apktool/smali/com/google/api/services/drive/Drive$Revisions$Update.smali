.class public Lcom/google/api/services/drive/Drive$Revisions$Update;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/Revision;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/revisions/{revisionId}"


# instance fields
.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private revisionId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Revisions;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Revisions;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Revision;)V
    .locals 6

    .prologue
    .line 6986
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Revisions$Update;->this$1:Lcom/google/api/services/drive/Drive$Revisions;

    .line 6987
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Revisions;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "PATCH"

    const-string/jumbo v3, "files/{fileId}/revisions/{revisionId}"

    const-class v5, Lcom/google/api/services/drive/model/Revision;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6988
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Revisions$Update;->fileId:Ljava/lang/String;

    .line 6989
    const-string/jumbo v0, "Required parameter revisionId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Revisions$Update;->revisionId:Ljava/lang/String;

    .line 6990
    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7034
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Revisions$Update;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getRevisionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7050
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Revisions$Update;->revisionId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Revisions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Revisions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Revisions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 1

    .prologue
    .line 7061
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Revisions$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 1

    .prologue
    .line 6994
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Update;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 1

    .prologue
    .line 6999
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 0

    .prologue
    .line 7039
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Revisions$Update;->fileId:Ljava/lang/String;

    .line 7040
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 1

    .prologue
    .line 7004
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Update;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 1

    .prologue
    .line 7009
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Update;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 1

    .prologue
    .line 7014
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Update;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 1

    .prologue
    .line 7019
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Update;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method

.method public setRevisionId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 0

    .prologue
    .line 7055
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Revisions$Update;->revisionId:Ljava/lang/String;

    .line 7056
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;
    .locals 1

    .prologue
    .line 7024
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Update;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6967
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Update;

    move-result-object v0

    return-object v0
.end method
