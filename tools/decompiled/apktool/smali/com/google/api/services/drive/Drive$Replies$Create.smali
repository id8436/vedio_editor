.class public Lcom/google/api/services/drive/Drive$Replies$Create;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/Reply;",
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

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Replies;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Replies;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/Reply;)V
    .locals 6

    .prologue
    .line 5714
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$Create;->this$1:Lcom/google/api/services/drive/Drive$Replies;

    .line 5715
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Replies;->this$0:Lcom/google/api/services/drive/Drive;

    const-string/jumbo v2, "POST"

    const-string/jumbo v3, "files/{fileId}/comments/{commentId}/replies"

    const-class v5, Lcom/google/api/services/drive/model/Reply;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5716
    const-string/jumbo v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$Create;->fileId:Ljava/lang/String;

    .line 5717
    const-string/jumbo v0, "Required parameter commentId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$Create;->commentId:Ljava/lang/String;

    .line 5718
    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5778
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$Create;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5762
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$Create;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 1

    .prologue
    .line 5789
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Create;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$Create;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 1

    .prologue
    .line 5722
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Create;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Create;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 0

    .prologue
    .line 5783
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$Create;->commentId:Ljava/lang/String;

    .line 5784
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 1

    .prologue
    .line 5727
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Create;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Create;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 0

    .prologue
    .line 5767
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$Create;->fileId:Ljava/lang/String;

    .line 5768
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 1

    .prologue
    .line 5732
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Create;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Create;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 1

    .prologue
    .line 5737
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Create;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Create;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 1

    .prologue
    .line 5742
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Create;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Create;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 1

    .prologue
    .line 5747
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Create;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Create;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;
    .locals 1

    .prologue
    .line 5752
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Create;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5695
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Create;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Create;

    move-result-object v0

    return-object v0
.end method
