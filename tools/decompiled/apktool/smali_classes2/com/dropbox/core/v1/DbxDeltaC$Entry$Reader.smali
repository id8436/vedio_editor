.class public final Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxDeltaC.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MD:",
        "Lcom/dropbox/core/util/Dumpable;",
        ">",
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
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
    .line 243
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    .line 245
    return-void
.end method

.method public static read(Lcom/d/a/a/k;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/v1/DbxDeltaC$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MD:",
            "Lcom/dropbox/core/util/Dumpable;",
            ">(",
            "Lcom/d/a/a/k;",
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;)",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
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
    .line 255
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->expectArrayStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-result-object v2

    .line 257
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/d/a/a/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expecting a two-element array of [path, metadata], found a zero-element array"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 263
    :cond_0
    :try_start_0
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p0}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/d/a/a/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expecting a two-element array of [path, metadata], found a one-element array"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dropbox/core/json/JsonReadException;->addArrayContext(I)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 275
    :cond_1
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/dropbox/core/json/JsonReader;->readOptional(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/util/Dumpable;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_1

    .line 281
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->isArrayEnd(Lcom/d/a/a/k;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 282
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expecting a two-element array of [path, metadata], found more than two elements"

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 277
    :catch_1
    move-exception v0

    .line 278
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/json/JsonReadException;->addArrayContext(I)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 285
    :cond_2
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 287
    new-instance v2, Lcom/dropbox/core/v1/DbxDeltaC$Entry;

    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/v1/DbxDeltaC$Entry;-><init>(Ljava/lang/String;Lcom/dropbox/core/util/Dumpable;)V

    return-object v2
.end method


# virtual methods
.method public read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxDeltaC$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
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
    .line 249
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    invoke-static {p1, v0}, Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;->read(Lcom/d/a/a/k;Lcom/dropbox/core/json/JsonReader;)Lcom/dropbox/core/v1/DbxDeltaC$Entry;

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
    .line 238
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxDeltaC$Entry;

    move-result-object v0

    return-object v0
.end method
