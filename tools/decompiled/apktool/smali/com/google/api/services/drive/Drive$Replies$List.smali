.class public Lcom/google/api/services/drive/Drive$Replies$List;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/ReplyList;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/comments/{commentId}/replies"


# instance fields
.field private commentId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private includeDeleted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageSize:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Replies;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Replies;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 6152
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$List;->this$1:Lcom/google/api/services/drive/Drive$Replies;

    .line 6153
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Replies;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "GET"

    const-string/jumbo v3, "files/{fileId}/comments/{commentId}/replies"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/drive/model/ReplyList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6154
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$List;->fileId:Ljava/lang/String;

    .line 6155
    const-string/jumbo v0, "Required parameter commentId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$List;->commentId:Ljava/lang/String;

    .line 6156
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
    .line 6165
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
    .line 6160
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6226
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$List;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6210
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$List;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeDeleted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 6246
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$List;->includeDeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 6292
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$List;->pageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6312
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeDeleted()Z
    .locals 2

    .prologue
    .line 6279
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$List;->includeDeleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$List;->includeDeleted:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 6280
    :cond_0
    const/4 v0, 0x0

    .line 6282
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$List;->includeDeleted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 1

    .prologue
    .line 6326
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 1

    .prologue
    .line 6170
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 0

    .prologue
    .line 6231
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$List;->commentId:Ljava/lang/String;

    .line 6232
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 1

    .prologue
    .line 6175
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 0

    .prologue
    .line 6215
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$List;->fileId:Ljava/lang/String;

    .line 6216
    return-object p0
.end method

.method public setIncludeDeleted(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 0

    .prologue
    .line 6254
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$List;->includeDeleted:Ljava/lang/Boolean;

    .line 6255
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 1

    .prologue
    .line 6180
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 1

    .prologue
    .line 6185
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method

.method public setPageSize(Ljava/lang/Integer;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 0

    .prologue
    .line 6297
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$List;->pageSize:Ljava/lang/Integer;

    .line 6298
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 0

    .prologue
    .line 6320
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$List;->pageToken:Ljava/lang/String;

    .line 6321
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 1

    .prologue
    .line 6190
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 1

    .prologue
    .line 6195
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;
    .locals 1

    .prologue
    .line 6200
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 6134
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$List;

    move-result-object v0

    return-object v0
.end method
