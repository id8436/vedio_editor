.class final Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-result-object v4

    move-object v2, v1

    move-object v3, v1

    .line 167
    :goto_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v5, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v5, :cond_0

    .line 168
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 171
    invoke-static {}, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;->access$100()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v0

    .line 173
    packed-switch v0, :pswitch_data_0

    .line 179
    :try_start_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", field = \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    invoke-virtual {v0, v5}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 174
    :pswitch_0
    :try_start_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    :goto_1
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 185
    goto :goto_0

    .line 175
    :pswitch_1
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v5, v3}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_1

    .line 176
    :pswitch_2
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v5, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1

    .line 177
    :pswitch_3
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v5, v1}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1

    .line 187
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    .line 189
    if-nez v3, :cond_1

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"familiarName\""

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 190
    :cond_1
    if-nez v1, :cond_2

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"surname\""

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 191
    :cond_2
    if-nez v2, :cond_3

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"givenName\""

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 193
    :cond_3
    new-instance v0, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 173
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
    .line 157
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails$1;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

    move-result-object v0

    return-object v0
.end method
