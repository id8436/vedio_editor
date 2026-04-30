.class final Lcom/dropbox/core/DbxAppInfo$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/DbxAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/d/a/a/k;)Lcom/dropbox/core/DbxAppInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-result-object v4

    move-object v2, v1

    move-object v3, v1

    .line 140
    :goto_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v5, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v5, :cond_3

    .line 141
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 145
    :try_start_0
    const-string/jumbo v0, "key"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/dropbox/core/DbxAppInfo;->KeyReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v5, v3}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    :goto_1
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 162
    goto :goto_0

    .line 148
    :cond_0
    const-string/jumbo v0, "secret"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    sget-object v0, Lcom/dropbox/core/DbxAppInfo;->SecretReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v5, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    .line 151
    :cond_1
    const-string/jumbo v0, "host"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    sget-object v0, Lcom/dropbox/core/DbxHost;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v5, v1}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/DbxHost;

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 156
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/d/a/a/k;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0, v5}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 164
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    .line 166
    if-nez v3, :cond_4

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"key\""

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 167
    :cond_4
    if-nez v2, :cond_5

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"secret\""

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 168
    :cond_5
    if-nez v1, :cond_6

    sget-object v1, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    .line 170
    :cond_6
    new-instance v0, Lcom/dropbox/core/DbxAppInfo;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/DbxAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

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
    .line 129
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxAppInfo$1;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/DbxAppInfo;

    move-result-object v0

    return-object v0
.end method
