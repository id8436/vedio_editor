.class final Lcom/dropbox/core/v1/DbxAccountInfo$Quota$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxAccountInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxAccountInfo$Quota;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxAccountInfo$Quota;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v6, -0x1

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-result-object v0

    move-wide v4, v6

    move-wide v2, v6

    .line 87
    :goto_0
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    sget-object v8, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v1, v8, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 91
    invoke-static {}, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;->access$000()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v8

    .line 93
    packed-switch v8, :pswitch_data_0

    .line 99
    :try_start_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", field = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0, v1}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 94
    :pswitch_0
    :try_start_1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_0

    .line 95
    :pswitch_1
    invoke-static {p1, v1, v2, v3}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/d/a/a/k;Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0

    .line 96
    :pswitch_2
    invoke-static {p1, v1, v4, v5}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/d/a/a/k;Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_0

    .line 97
    :pswitch_3
    invoke-static {p1, v1, v6, v7}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/d/a/a/k;Ljava/lang/String;J)J
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    .line 109
    cmp-long v1, v2, v10

    if-gez v1, :cond_1

    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"quota\""

    invoke-direct {v1, v2, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v1

    .line 110
    :cond_1
    cmp-long v1, v4, v10

    if-gez v1, :cond_2

    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"normal\""

    invoke-direct {v1, v2, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v1

    .line 111
    :cond_2
    cmp-long v1, v6, v10

    if-gez v1, :cond_3

    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v2, "missing field \"shared\""

    invoke-direct {v1, v2, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v1

    .line 113
    :cond_3
    new-instance v1, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v1/DbxAccountInfo$Quota;-><init>(JJJ)V

    return-object v1

    .line 93
    nop

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
    .line 77
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxAccountInfo$Quota$1;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxAccountInfo$Quota;

    move-result-object v0

    return-object v0
.end method
