.class public final Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxDelta.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MD:",
        "Lcom/dropbox/core/util/Dumpable;",
        ">",
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxDelta$Entry",
        "<TMD;>;>;"
    }
.end annotation


# instance fields
.field public final metadataReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/json/JsonReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;)V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    .line 244
    return-void
.end method

.method public static read(Lcom/d/a/a/k;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/v1/DbxDelta$Entry;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MD:",
            "Lcom/dropbox/core/util/Dumpable;",
            ">(",
            "Lcom/d/a/a/k;",
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;)",
            "Lcom/dropbox/core/v1/DbxDelta$Entry",
            "<TMD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->expectArrayStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-result-object v2

    .line 256
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/d/a/a/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expecting a two-element array of [path, metadata], found a zero-element array"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 262
    :cond_0
    :try_start_0
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p0}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/d/a/a/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "expecting a two-element array of [path, metadata], found a one-element array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/core/json/JsonReadException;->addArrayContext(I)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 274
    :cond_1
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/dropbox/core/json/JsonReader;->readOptional(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/util/Dumpable;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/d/a/a/k;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 281
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expecting a two-element array of [path, metadata], found non \"]\" token after the two elements: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 276
    :catch_1
    move-exception v0

    .line 277
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/json/JsonReadException;->addArrayContext(I)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 286
    new-instance v2, Lcom/dropbox/core/v1/DbxDelta$Entry;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/v1/DbxDelta$Entry;-><init>(Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;)V

    return-object v2
.end method


# virtual methods
.method public read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxDelta$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")",
            "Lcom/dropbox/core/v1/DbxDelta$Entry",
            "<TMD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {p1, v0}, Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;->read(Lcom/d/a/a/k;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/v1/DbxDelta$Entry;

    move-result-object v0

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
    .line 237
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxDelta$Entry$Reader;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxDelta$Entry;

    move-result-object v0

    return-object v0
.end method
