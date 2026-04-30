.class public final Lcom/dropbox/core/v1/DbxDeltaC$Reader;
.super Lcom/dropbox/core/json/JsonReader;
.source "DbxDeltaC.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "MD:",
        "Lcom/dropbox/core/util/Dumpable;",
        ">",
        "Lcom/dropbox/core/json/JsonReader",
        "<",
        "Lcom/dropbox/core/v1/DbxDeltaC",
        "<TC;>;>;"
    }
.end annotation


# static fields
.field private static final FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

.field private static final FM_cursor:I = 0x2

.field private static final FM_entries:I = 0x1

.field private static final FM_has_more:I = 0x3

.field private static final FM_reset:I


# instance fields
.field public final entryCollector:Lcom/dropbox/core/util/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
            "<TMD;>;TC;>;"
        }
    .end annotation
.end field

.field public final metadataReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    .line 162
    const-string/jumbo v1, "reset"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 163
    const-string/jumbo v1, "entries"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 164
    const-string/jumbo v1, "cursor"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 165
    const-string/jumbo v1, "has_more"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 166
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v1/DbxDeltaC$Reader;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    .line 167
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
            "<TMD;>;TC;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxDeltaC$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    .line 98
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxDeltaC$Reader;->entryCollector:Lcom/dropbox/core/util/Collector;

    .line 99
    return-void
.end method

.method public static read(Lcom/d/a/a/k;Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxDeltaC;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "MD:",
            "Lcom/dropbox/core/util/Dumpable;",
            ">(",
            "Lcom/d/a/a/k;",
            "Lcom/dropbox/core/json/JsonReader",
            "<TMD;>;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxDeltaC$Entry",
            "<TMD;>;TC;>;)",
            "Lcom/dropbox/core/v1/DbxDeltaC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-result-object v5

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v6, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v6, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v6

    .line 118
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;

    .line 120
    sget-object v0, Lcom/dropbox/core/v1/DbxDeltaC$Reader;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    invoke-virtual {v0, v6}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v0

    .line 122
    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    .line 124
    :try_start_0
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/d/a/a/k;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0, v6}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 127
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 136
    :try_start_1
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

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 128
    :pswitch_0
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p0, v6, v4}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v8, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v8

    :goto_1
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 142
    goto :goto_0

    .line 130
    :pswitch_1
    new-instance v0, Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v1/DbxDeltaC$Entry$Reader;-><init>(Lcom/dropbox/core/json/JsonReader;)V

    .line 131
    invoke-static {v0, p2}, Lcom/dropbox/core/json/JsonArrayReader;->mk(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/json/JsonArrayReader;

    move-result-object v0

    invoke-virtual {v0, p0, v6, v3}, Lcom/dropbox/core/json/JsonArrayReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v4

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    .line 132
    goto :goto_1

    .line 133
    :pswitch_2
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p0, v6, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v3

    move-object v3, v4

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    .line 134
    :pswitch_3
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0, p0, v6, v1}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_1

    .line 144
    :cond_1
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    .line 146
    if-nez v4, :cond_2

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"path\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 147
    :cond_2
    if-nez v3, :cond_3

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"entries\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 148
    :cond_3
    if-nez v2, :cond_4

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"cursor\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 149
    :cond_4
    if-nez v1, :cond_5

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "missing field \"has_more\""

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 151
    :cond_5
    new-instance v0, Lcom/dropbox/core/v1/DbxDeltaC;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/dropbox/core/v1/DbxDeltaC;-><init>(ZLjava/lang/Object;Ljava/lang/String;Z)V

    return-object v0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxDeltaC;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")",
            "Lcom/dropbox/core/v1/DbxDeltaC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxDeltaC$Reader;->metadataReader:Lcom/dropbox/core/json/JsonReader;

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxDeltaC$Reader;->entryCollector:Lcom/dropbox/core/util/Collector;

    invoke-static {p1, v0, v1}, Lcom/dropbox/core/v1/DbxDeltaC$Reader;->read(Lcom/d/a/a/k;Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxDeltaC;

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
    .line 90
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxDeltaC$Reader;->read(Lcom/d/a/a/k;)Lcom/dropbox/core/v1/DbxDeltaC;

    move-result-object v0

    return-object v0
.end method
