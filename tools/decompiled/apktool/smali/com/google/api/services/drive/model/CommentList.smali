.class public final Lcom/google/api/services/drive/model/CommentList;
.super Lcom/google/api/client/json/GenericJson;
.source "CommentList.java"


# instance fields
.field private comments:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/api/services/drive/model/Comment;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CommentList;->clone()Lcom/google/api/services/drive/model/CommentList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CommentList;->clone()Lcom/google/api/services/drive/model/CommentList;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/CommentList;
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CommentList;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/CommentList;->clone()Lcom/google/api/services/drive/model/CommentList;

    move-result-object v0

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/api/services/drive/model/CommentList;->comments:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/api/services/drive/model/CommentList;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/api/services/drive/model/CommentList;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/CommentList;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CommentList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/CommentList;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CommentList;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/CommentList;
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/CommentList;

    return-object v0
.end method

.method public setComments(Ljava/util/List;)Lcom/google/api/services/drive/model/CommentList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/drive/model/Comment;",
            ">;)",
            "Lcom/google/api/services/drive/model/CommentList;"
        }
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/api/services/drive/model/CommentList;->comments:Ljava/util/List;

    .line 82
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/CommentList;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/api/services/drive/model/CommentList;->kind:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/model/CommentList;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/api/services/drive/model/CommentList;->nextPageToken:Ljava/lang/String;

    .line 120
    return-object p0
.end method
