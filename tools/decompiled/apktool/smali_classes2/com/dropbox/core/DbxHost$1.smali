.class final Lcom/dropbox/core/DbxHost$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxHost.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/DbxHost;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/d/a/a/k;)Lcom/dropbox/core/DbxHost;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    .line 118
    sget-object v2, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v2, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;

    .line 121
    invoke-static {v0}, Lcom/dropbox/core/DbxHost;->access$000(Ljava/lang/String;)Lcom/dropbox/core/DbxHost;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    .line 122
    :cond_0
    sget-object v2, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    if-ne v0, v2, :cond_a

    .line 123
    invoke-virtual {p1}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v5

    .line 124
    invoke-static {p1}, Lcom/dropbox/core/DbxHost$1;->nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 131
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v6, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v6, :cond_5

    .line 132
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 136
    :try_start_0
    const-string/jumbo v0, "api"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v6, v4}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v7

    :goto_2
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 155
    goto :goto_1

    .line 139
    :cond_1
    const-string/jumbo v0, "content"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v6, v3}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v4

    move-object v7, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2

    .line 142
    :cond_2
    const-string/jumbo v0, "web"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v6, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v3, v4

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    .line 145
    :cond_3
    const-string/jumbo v0, "notify"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v6, v1}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 149
    :cond_4
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "unknown field"

    invoke-virtual {p1}, Lcom/d/a/a/k;->f()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0, v6}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 157
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    .line 159
    if-nez v4, :cond_6

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"api\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 160
    :cond_6
    if-nez v3, :cond_7

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"content\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 161
    :cond_7
    if-nez v2, :cond_8

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"web\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 162
    :cond_8
    if-nez v1, :cond_9

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"notify\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 164
    :cond_9
    new-instance v0, Lcom/dropbox/core/DbxHost;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/dropbox/core/DbxHost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_a
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expecting a string or an object"

    invoke-virtual {p1}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0
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
    .line 114
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxHost$1;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/DbxHost;

    move-result-object v0

    return-object v0
.end method
