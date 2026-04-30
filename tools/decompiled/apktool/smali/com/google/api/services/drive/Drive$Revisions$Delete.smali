.class public Lcom/google/api/services/drive/Drive$Revisions$Delete;
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
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Revisions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 6527
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Revisions$Delete;->this$1:Lcom/google/api/services/drive/Drive$Revisions;

    .line 6528
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Revisions;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "DELETE"

    const-string/jumbo v3, "files/{fileId}/revisions/{revisionId}"

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6529
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Revisions$Delete;->fileId:Ljava/lang/String;

    .line 6530
    const-string/jumbo v0, "Required parameter revisionId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Revisions$Delete;->revisionId:Ljava/lang/String;

    .line 6531
    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6575
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Revisions$Delete;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getRevisionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6591
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Revisions$Delete;->revisionId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 1

    .prologue
    .line 6602
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Delete;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 1

    .prologue
    .line 6535
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Delete;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 1

    .prologue
    .line 6540
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Delete;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 0

    .prologue
    .line 6580
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Revisions$Delete;->fileId:Ljava/lang/String;

    .line 6581
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 1

    .prologue
    .line 6545
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Delete;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 1

    .prologue
    .line 6550
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Delete;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 1

    .prologue
    .line 6555
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Delete;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 1

    .prologue
    .line 6560
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Delete;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setRevisionId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 0

    .prologue
    .line 6596
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Revisions$Delete;->revisionId:Ljava/lang/String;

    .line 6597
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;
    .locals 1

    .prologue
    .line 6565
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Revisions$Delete;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6508
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Revisions$Delete;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Revisions$Delete;

    move-result-object v0

    return-object v0
.end method
