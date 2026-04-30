.class public abstract Lcom/dropbox/core/json/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final BinaryReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<[B>;"
        }
    .end annotation
.end field

.field public static final BooleanReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final Float32Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Float64Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final Int32Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Int64Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final StringReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UInt32Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final UInt64Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final UnsignedLongReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final VoidReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final jsonFactory:Lcom/d/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dropbox/core/json/JsonReader;->$assertionsDisabled:Z

    .line 176
    new-instance v0, Lcom/dropbox/core/json/JsonReader$1;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->UnsignedLongReader:Lcom/dropbox/core/json/JsonReader;

    .line 208
    new-instance v0, Lcom/dropbox/core/json/JsonReader$2;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Int64Reader:Lcom/dropbox/core/json/JsonReader;

    .line 219
    new-instance v0, Lcom/dropbox/core/json/JsonReader$3;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Int32Reader:Lcom/dropbox/core/json/JsonReader;

    .line 231
    new-instance v0, Lcom/dropbox/core/json/JsonReader$4;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$4;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->UInt64Reader:Lcom/dropbox/core/json/JsonReader;

    .line 241
    new-instance v0, Lcom/dropbox/core/json/JsonReader$5;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$5;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->UInt32Reader:Lcom/dropbox/core/json/JsonReader;

    .line 254
    new-instance v0, Lcom/dropbox/core/json/JsonReader$6;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$6;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Float64Reader:Lcom/dropbox/core/json/JsonReader;

    .line 265
    new-instance v0, Lcom/dropbox/core/json/JsonReader$7;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$7;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Float32Reader:Lcom/dropbox/core/json/JsonReader;

    .line 276
    new-instance v0, Lcom/dropbox/core/json/JsonReader$8;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$8;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    .line 292
    new-instance v0, Lcom/dropbox/core/json/JsonReader$9;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$9;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->BinaryReader:Lcom/dropbox/core/json/JsonReader;

    .line 310
    new-instance v0, Lcom/dropbox/core/json/JsonReader$10;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$10;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    .line 344
    new-instance v0, Lcom/dropbox/core/json/JsonReader$11;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$11;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->VoidReader:Lcom/dropbox/core/json/JsonReader;

    .line 451
    new-instance v0, Lcom/d/a/a/d;

    invoke-direct {v0}, Lcom/d/a/a/d;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/d/a/a/d;

    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expectArrayEnd(Lcom/d/a/a/k;)Lcom/d/a/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->e:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 144
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expecting the end of an array (\"[\")"

    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v0

    .line 147
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;

    .line 148
    return-object v0
.end method

.method public static expectArrayStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 133
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expecting the start of an array (\"[\")"

    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v0

    .line 136
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;

    .line 137
    return-object v0
.end method

.method public static expectObjectEnd(Lcom/d/a/a/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 124
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expecting the end of an object (\"}\")"

    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 126
    :cond_0
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;

    .line 127
    return-void
.end method

.method public static expectObjectStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expecting the start of an object (\"{\")"

    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v0

    .line 116
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;

    .line 117
    return-object v0
.end method

.method public static isArrayEnd(Lcom/d/a/a/k;)Z
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->e:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArrayStart(Lcom/d/a/a/k;)Z
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->d:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0
.end method

.method public static readBoolean(Lcom/d/a/a/k;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->s()Z

    move-result v0

    .line 324
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    return v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0
.end method

.method public static readDouble(Lcom/d/a/a/k;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->q()D

    move-result-wide v0

    .line 337
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    return-wide v0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0
.end method

.method public static readEnum(Lcom/d/a/a/k;Ljava/util/HashMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/d/a/a/k;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->b:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_7

    .line 359
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 361
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->readTags(Lcom/d/a/a/k;)[Ljava/lang/String;

    move-result-object v1

    .line 362
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v2, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    if-ne v0, v2, :cond_3

    .line 363
    sget-boolean v0, Lcom/dropbox/core/json/JsonReader;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    array-length v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    aget-object v0, v1, v3

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 364
    :cond_1
    aget-object v0, v1, v3

    .line 375
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 376
    if-nez v1, :cond_2

    move-object v1, p2

    .line 378
    :cond_2
    if-nez v1, :cond_6

    .line 379
    new-instance v1, Lcom/dropbox/core/json/JsonReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected one of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v1

    .line 366
    :cond_3
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v2, :cond_5

    .line 367
    invoke-virtual {p0}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v0

    .line 368
    sget-boolean v2, Lcom/dropbox/core/json/JsonReader;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 369
    :cond_4
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 370
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_0

    .line 373
    :cond_5
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expecting a field name"

    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 380
    :cond_6
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    move-object v0, v1

    .line 392
    :goto_1
    return-object v0

    .line 383
    :cond_7
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_8

    .line 384
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "Expected a string value"

    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 385
    :cond_8
    invoke-virtual {p0}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 387
    if-nez v0, :cond_9

    move-object v0, p2

    .line 389
    :cond_9
    if-nez v0, :cond_a

    .line 390
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected one of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 391
    :cond_a
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    goto :goto_1
.end method

.method public static readTags(Lcom/d/a/a/k;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-eq v1, v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    const-string/jumbo v1, ".tag"

    invoke-virtual {p0}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 78
    invoke-virtual {p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-eq v0, v1, :cond_2

    .line 79
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v1, "expected a string value for .tag field"

    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/d/a/a/k;->g()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 83
    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static readUnsignedLong(Lcom/d/a/a/k;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->n()J

    move-result-wide v0

    .line 190
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 191
    new-instance v2, Lcom/dropbox/core/json/JsonReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "expecting a non-negative number, got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v2
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 193
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;
    :try_end_1
    .catch Lcom/d/a/a/j; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    return-wide v0
.end method

.method public static readUnsignedLongField(Lcom/d/a/a/k;Ljava/lang/String;J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duplicate field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/d/a/a/k;->f()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLong(Lcom/d/a/a/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static skipValue(Lcom/d/a/a/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/d/a/a/k;->b()Lcom/d/a/a/k;

    .line 166
    invoke-virtual {p0}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public abstract read(Lcom/d/a/a/k;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation
.end method

.method public final readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p3, :cond_0

    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duplicate field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/d/a/a/k;->e()Lcom/d/a/a/i;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v0

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readFields(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public readFromFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/json/JsonReader$FileLoadException;
        }
    .end annotation

    .prologue
    .line 515
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 517
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->readFully(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 520
    :try_start_2
    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    .line 517
    return-object v1

    .line 520
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/dropbox/core/util/IOUtil;->closeInput(Ljava/io/InputStream;)V

    throw v1
    :try_end_2
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 523
    :catch_0
    move-exception v0

    .line 524
    new-instance v1, Lcom/dropbox/core/json/JsonReader$FileLoadException$JsonError;

    invoke-direct {v1, p1, v0}, Lcom/dropbox/core/json/JsonReader$FileLoadException$JsonError;-><init>(Ljava/io/File;Lcom/dropbox/core/json/JsonReadException;)V

    throw v1

    .line 526
    :catch_1
    move-exception v0

    .line 527
    new-instance v1, Lcom/dropbox/core/json/JsonReader$FileLoadException$IOError;

    invoke-direct {v1, p1, v0}, Lcom/dropbox/core/json/JsonReader$FileLoadException$IOError;-><init>(Ljava/io/File;Ljava/io/IOException;)V

    throw v1
.end method

.method public readFromFile(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/json/JsonReader$FileLoadException;
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->readFromFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readFromTags([Ljava/lang/String;Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/d/a/a/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public readFully(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 568
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    .line 569
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 570
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The JSON library should ensure there\'s no tokens after the main value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 571
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/d/a/a/k;->f()Lcom/d/a/a/i;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 573
    :cond_0
    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->validate(Ljava/lang/Object;)V

    .line 574
    return-object v0
.end method

.method public readFully(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 457
    :try_start_0
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/d/a/a/d;

    invoke-virtual {v0, p1}, Lcom/d/a/a/d;->a(Ljava/io/InputStream;)Lcom/d/a/a/k;

    move-result-object v0

    .line 458
    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->readFully(Lcom/d/a/a/k;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0
.end method

.method public readFully(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 469
    :try_start_0
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/d/a/a/d;

    invoke-virtual {v0, p1}, Lcom/d/a/a/d;->a(Ljava/lang/String;)Lcom/d/a/a/k;
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 471
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->readFully(Lcom/d/a/a/k;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 474
    :try_start_2
    invoke-virtual {v0}, Lcom/d/a/a/k;->close()V

    .line 471
    return-object v1

    .line 474
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/d/a/a/k;->close()V

    throw v1
    :try_end_2
    .catch Lcom/d/a/a/j; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 477
    :catch_0
    move-exception v0

    .line 478
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 480
    :catch_1
    move-exception v0

    .line 481
    const-string/jumbo v1, "IOException reading from String"

    invoke-static {v1, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public readFully([B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 489
    :try_start_0
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/d/a/a/d;

    invoke-virtual {v0, p1}, Lcom/d/a/a/d;->a([B)Lcom/d/a/a/k;
    :try_end_0
    .catch Lcom/d/a/a/j; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 491
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->readFully(Lcom/d/a/a/k;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 494
    :try_start_2
    invoke-virtual {v0}, Lcom/d/a/a/k;->close()V

    .line 491
    return-object v1

    .line 494
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/d/a/a/k;->close()V

    throw v1
    :try_end_2
    .catch Lcom/d/a/a/j; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 497
    :catch_0
    move-exception v0

    .line 498
    invoke-static {v0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/d/a/a/m;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v0

    throw v0

    .line 500
    :catch_1
    move-exception v0

    .line 501
    const-string/jumbo v1, "IOException reading from byte[]"

    invoke-static {v1, v0}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final readOptional(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/a/k;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->m:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public validate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 42
    return-void
.end method
