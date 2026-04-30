.class final Lcom/dropbox/core/DbxAuthFinish$2;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAuthFinish.java"


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
    .line 131
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
    .line 131
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxAuthFinish$2;->read(Lcom/d/a/a/k;)Ljava/lang/String;

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
    .line 135
    :try_start_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "Bearer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "bearer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expecting \"Bearer\": got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v1
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 139
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;
    :try_end_1
    .catch Lcom/d/a/a/j; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    return-object v0
.end method
