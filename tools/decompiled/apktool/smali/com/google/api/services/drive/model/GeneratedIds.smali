.class public final Lcom/google/api/services/drive/model/GeneratedIds;
.super Lcom/google/api/client/json/GenericJson;
.source "GeneratedIds.java"


# instance fields
.field private ids:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private space:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/GeneratedIds;->clone()Lcom/google/api/services/drive/model/GeneratedIds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/GeneratedIds;->clone()Lcom/google/api/services/drive/model/GeneratedIds;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/GeneratedIds;
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/GeneratedIds;

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
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/GeneratedIds;->clone()Lcom/google/api/services/drive/model/GeneratedIds;

    move-result-object v0

    return-object v0
.end method

.method public getIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/services/drive/model/GeneratedIds;->ids:Ljava/util/List;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/api/services/drive/model/GeneratedIds;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getSpace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/api/services/drive/model/GeneratedIds;->space:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/GeneratedIds;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/GeneratedIds;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/GeneratedIds;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/GeneratedIds;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/GeneratedIds;
    .locals 1

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/GeneratedIds;

    return-object v0
.end method

.method public setIds(Ljava/util/List;)Lcom/google/api/services/drive/model/GeneratedIds;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/drive/model/GeneratedIds;"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/api/services/drive/model/GeneratedIds;->ids:Ljava/util/List;

    .line 71
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/GeneratedIds;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/api/services/drive/model/GeneratedIds;->kind:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setSpace(Ljava/lang/String;)Lcom/google/api/services/drive/model/GeneratedIds;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/api/services/drive/model/GeneratedIds;->space:Ljava/lang/String;

    .line 105
    return-object p0
.end method
