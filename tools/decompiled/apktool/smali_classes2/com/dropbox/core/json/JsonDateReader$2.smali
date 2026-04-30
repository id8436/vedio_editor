.class final Lcom/dropbox/core/json/JsonDateReader$2;
.super Lcom/dropbox/core/json/JsonReader;
.source "JsonDateReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonDateReader$2;->read(Lcom/d/a/a/k;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/d/a/a/k;)Ljava/util/Date;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p1}, Lcom/d/a/a/k;->f()Lcom/d/a/a/i;

    move-result-object v1

    .line 238
    :try_start_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->h()[C

    move-result-object v0

    .line 239
    invoke-virtual {p1}, Lcom/d/a/a/k;->j()I

    move-result v2

    .line 240
    invoke-virtual {p1}, Lcom/d/a/a/k;->i()I

    move-result v3

    .line 241
    invoke-static {v0, v2, v3}, Lcom/dropbox/core/json/JsonDateReader;->parseDropbox8601Date([CII)Ljava/util/Date;

    move-result-object v0

    .line 242
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 243
    return-object v0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    new-instance v2, Lcom/dropbox/core/json/JsonReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bad date: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " at offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/ParseException;->getErrorOffset()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v2
.end method
