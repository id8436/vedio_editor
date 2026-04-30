.class public Lcom/google/api/services/drive/Drive$Comments$Update;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/Comment;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/comments/{commentId}"


# instance fields
.field private commentId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Comments;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Comments;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Comment;)V
    .locals 6

    .prologue
    .line 2020
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Comments$Update;->this$1:Lcom/google/api/services/drive/Drive$Comments;

    .line 2021
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Comments;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "PATCH"

    const-string/jumbo v3, "files/{fileId}/comments/{commentId}"

    const-class v5, Lcom/google/api/services/drive/model/Comment;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2022
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$Update;->fileId:Ljava/lang/String;

    .line 2023
    const-string/jumbo v0, "Required parameter commentId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$Update;->commentId:Ljava/lang/String;

    .line 2024
    const-string/jumbo v0, "content"

    invoke-virtual {p0, p4, v0}, Lcom/google/api/services/drive/Drive$Comments$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2025
    invoke-virtual {p4}, Lcom/google/api/services/drive/model/Comment;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Comment.getContent()"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/services/drive/Drive$Comments$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2026
    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$Update;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$Update;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 1

    .prologue
    .line 2097
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 1

    .prologue
    .line 2030
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$Update;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 0

    .prologue
    .line 2091
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Comments$Update;->commentId:Ljava/lang/String;

    .line 2092
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 1

    .prologue
    .line 2035
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 0

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Comments$Update;->fileId:Ljava/lang/String;

    .line 2076
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 1

    .prologue
    .line 2040
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$Update;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 1

    .prologue
    .line 2045
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$Update;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 1

    .prologue
    .line 2050
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$Update;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 1

    .prologue
    .line 2055
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$Update;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;
    .locals 1

    .prologue
    .line 2060
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$Update;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 2001
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$Update;

    move-result-object v0

    return-object v0
.end method
