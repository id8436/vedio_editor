.class public final Lcom/google/api/services/drive/model/Comment$QuotedFileContent;
.super Lcom/google/api/client/json/GenericJson;
.source "Comment.java"


# instance fields
.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;->clone()Lcom/google/api/services/drive/model/Comment$QuotedFileContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;->clone()Lcom/google/api/services/drive/model/Comment$QuotedFileContent;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/Comment$QuotedFileContent;
    .locals 1

    .prologue
    .line 404
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;

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
    .line 347
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;->clone()Lcom/google/api/services/drive/model/Comment$QuotedFileContent;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;->value:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Comment$QuotedFileContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Comment$QuotedFileContent;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/Comment$QuotedFileContent;
    .locals 1

    .prologue
    .line 399
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/Comment$QuotedFileContent;
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;->mimeType:Ljava/lang/String;

    .line 377
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/api/services/drive/model/Comment$QuotedFileContent;
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/google/api/services/drive/model/Comment$QuotedFileContent;->value:Ljava/lang/String;

    .line 394
    return-object p0
.end method
