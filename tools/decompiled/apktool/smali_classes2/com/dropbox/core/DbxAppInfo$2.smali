.class final Lcom/dropbox/core/DbxAppInfo$2;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
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
    .line 175
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxAppInfo$2;->read(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/d/a/a/k;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Lcom/dropbox/core/DbxAppInfo;->getKeyFormatError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_0

    .line 183
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad format for app key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 185
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;
    :try_end_1
    .catch Lcom/d/a/a/j; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    return-object v0
.end method
