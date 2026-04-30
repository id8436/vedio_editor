.class final Lcom/dropbox/core/DbxAuthFinish$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAuthFinish.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/DbxAuthFinish;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/d/a/a/k;)Lcom/dropbox/core/DbxAuthFinish;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-result-object v5

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 94
    :goto_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v6, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v6, :cond_4

    .line 95
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;

    .line 99
    :try_start_0
    const-string/jumbo v0, "token_type"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/dropbox/core/DbxAuthFinish;->BearerTokenTypeReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v6, v3}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v4

    move-object v7, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v7

    :goto_1
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 119
    goto :goto_0

    .line 102
    :cond_0
    const-string/jumbo v0, "access_token"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/dropbox/core/DbxAuthFinish;->AccessTokenReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v6, v4}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v7

    goto :goto_1

    .line 105
    :cond_1
    const-string/jumbo v0, "uid"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v6, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v3, v4

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1

    .line 108
    :cond_2
    const-string/jumbo v0, "state"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v6, v1}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    .line 113
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/d/a/a/k;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0, v6}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 121
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    .line 123
    if-nez v3, :cond_5

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"token_type\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 124
    :cond_5
    if-nez v4, :cond_6

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"access_token\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 125
    :cond_6
    if-nez v2, :cond_7

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"uid\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 127
    :cond_7
    new-instance v0, Lcom/dropbox/core/DbxAuthFinish;

    invoke-direct {v0, v4, v2, v1}, Lcom/dropbox/core/DbxAuthFinish;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    .line 85
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxAuthFinish$1;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/DbxAuthFinish;

    move-result-object v0

    return-object v0
.end method
