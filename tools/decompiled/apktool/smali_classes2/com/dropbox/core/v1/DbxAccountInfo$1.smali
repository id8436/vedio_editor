.class final Lcom/dropbox/core/v1/DbxAccountInfo$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxAccountInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxAccountInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 220
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-result-object v1

    .line 222
    const-wide/16 v2, -0x1

    move-object v9, v10

    move-object v8, v10

    move-object v7, v10

    move-object v6, v10

    move-object v5, v10

    move-object v4, v10

    .line 231
    :goto_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v11, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v11, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v11

    .line 233
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 236
    :try_start_0
    invoke-static {}, Lcom/dropbox/core/v1/DbxAccountInfo;->access$200()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v0

    .line 237
    packed-switch v0, :pswitch_data_0

    .line 248
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

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 251
    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0, v11}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 238
    :pswitch_0
    :try_start_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v10

    :goto_1
    move-object v10, v0

    .line 254
    goto :goto_0

    .line 239
    :pswitch_1
    invoke-static {p1, v11, v2, v3}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/d/a/a/k;Ljava/lang/String;J)J

    move-result-wide v2

    move-object v0, v10

    goto :goto_1

    .line 240
    :pswitch_2
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v11, v4}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object v0, v10

    goto :goto_1

    .line 241
    :pswitch_3
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v11, v5}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    move-object v0, v10

    goto :goto_1

    .line 242
    :pswitch_4
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v11, v6}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    move-object v0, v10

    goto :goto_1

    .line 243
    :pswitch_5
    sget-object v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v11, v7}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

    move-object v7, v0

    move-object v0, v10

    goto :goto_1

    .line 244
    :pswitch_6
    sget-object v0, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v11, v9}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;

    move-object v9, v0

    move-object v0, v10

    goto :goto_1

    .line 245
    :pswitch_7
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v11, v8}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    move-object v0, v10

    goto :goto_1

    .line 246
    :pswitch_8
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p1, v11, v10}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 256
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    .line 258
    const-wide/16 v12, 0x0

    cmp-long v0, v2, v12

    if-gez v0, :cond_1

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"uid\""

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 259
    :cond_1
    if-nez v4, :cond_2

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"display_name\""

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 260
    :cond_2
    if-nez v5, :cond_3

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"country\""

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 261
    :cond_3
    if-nez v6, :cond_4

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"referral_link\""

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 262
    :cond_4
    if-nez v7, :cond_5

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"quota_info\""

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 263
    :cond_5
    if-nez v8, :cond_6

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"email\""

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 264
    :cond_6
    if-nez v9, :cond_7

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"nameDetails\""

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 265
    :cond_7
    if-nez v10, :cond_8

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"emailVerified\""

    invoke-direct {v0, v2, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 267
    :cond_8
    new-instance v1, Lcom/dropbox/core/v1/DbxAccountInfo;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct/range {v1 .. v10}, Lcom/dropbox/core/v1/DbxAccountInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v1/DbxAccountInfo$Quota;Ljava/lang/String;Lcom/dropbox/core/v1/DbxAccountInfo$NameDetails;Z)V

    return-object v1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
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
    .line 216
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxAccountInfo$1;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxAccountInfo;

    move-result-object v0

    return-object v0
.end method
