.class public Lcom/google/api/services/drive/Drive$Comments$List;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/CommentList;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/comments"


# instance fields
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

.field private startModifiedTime:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Comments;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Comments;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Comments$List;->this$1:Lcom/google/api/services/drive/Drive$Comments;

    .line 1807
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Comments;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "GET"

    const-string/jumbo v3, "files/{fileId}/comments"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/drive/model/CommentList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1808
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$List;->fileId:Ljava/lang/String;

    .line 1809
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
    .line 1818
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
    .line 1813
    invoke-super {p0}, Lcom/google/api/services/drive/DriveRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$List;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeDeleted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$List;->includeDeleted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1929
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$List;->pageSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getStartModifiedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$List;->startModifiedTime:Ljava/lang/String;

    return-object v0
.end method

.method public isIncludeDeleted()Z
    .locals 2

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$List;->includeDeleted:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$List;->includeDeleted:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 1917
    :cond_0
    const/4 v0, 0x0

    .line 1919
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Comments$List;->includeDeleted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 1

    .prologue
    .line 1979
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Comments$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 1

    .prologue
    .line 1823
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 1

    .prologue
    .line 1828
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 0

    .prologue
    .line 1868
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Comments$List;->fileId:Ljava/lang/String;

    .line 1869
    return-object p0
.end method

.method public setIncludeDeleted(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 0

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Comments$List;->includeDeleted:Ljava/lang/Boolean;

    .line 1892
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 1

    .prologue
    .line 1833
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 1

    .prologue
    .line 1838
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method

.method public setPageSize(Ljava/lang/Integer;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 0

    .prologue
    .line 1934
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Comments$List;->pageSize:Ljava/lang/Integer;

    .line 1935
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 0

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Comments$List;->pageToken:Ljava/lang/String;

    .line 1958
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 1

    .prologue
    .line 1843
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 1

    .prologue
    .line 1848
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method

.method public setStartModifiedTime(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 0

    .prologue
    .line 1973
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Comments$List;->startModifiedTime:Ljava/lang/String;

    .line 1974
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;
    .locals 1

    .prologue
    .line 1853
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Comments$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 1789
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Comments$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Comments$List;

    move-result-object v0

    return-object v0
.end method
