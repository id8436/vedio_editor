.class final Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxClientV1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 893
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-result-object v5

    .line 895
    const/4 v4, 0x0

    move-wide v2, v6

    .line 898
    :goto_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_2

    .line 899
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 900
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 903
    :try_start_0
    const-string/jumbo v0, "upload_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v1, v4}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    :goto_1
    move-object v4, v2

    move-wide v2, v0

    .line 916
    goto :goto_0

    .line 906
    :cond_0
    const-string/jumbo v0, "offset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    invoke-static {p1, v1, v2, v3}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/d/a/a/k;Ljava/lang/String;J)J

    move-result-wide v0

    move-object v2, v4

    goto :goto_1

    .line 910
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/d/a/a/k;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    move-object v2, v4

    goto :goto_1

    .line 913
    :catch_0
    move-exception v0

    .line 914
    invoke-virtual {v0, v1}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 918
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    .line 920
    if-nez v4, :cond_3

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"upload_id\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 921
    :cond_3
    cmp-long v0, v2, v6

    if-nez v0, :cond_4

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"offset\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 923
    :cond_4
    new-instance v0, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;

    invoke-direct {v0, v4, v2, v3}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public bridge synthetic read(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 889
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState$1;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxClientV1$ChunkedUploadState;

    move-result-object v0

    return-object v0
.end method
