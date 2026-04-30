.class public abstract Lcom/dropbox/core/util/DumpWriter;
.super Ljava/lang/Object;
.source "DumpWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toStringDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x22

    const/4 v8, 0x2

    .line 257
    if-nez p0, :cond_0

    .line 258
    const-string/jumbo v0, "null"

    .line 273
    :goto_0
    return-object v0

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/dropbox/core/json/JsonDateReader;->UTC:Ljava/util/TimeZone;

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 262
    invoke-virtual {v1, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 263
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {v1, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/dropbox/core/util/DumpWriter;->zeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 265
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/dropbox/core/util/DumpWriter;->zeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 266
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/dropbox/core/util/DumpWriter;->zeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 267
    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/dropbox/core/util/DumpWriter;->zeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 268
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/dropbox/core/util/DumpWriter;->zeroPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " UTC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static zeroPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 279
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 282
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
.end method

.method public fieldVerbatim(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    return-object v0
.end method

.method public abstract listEnd()Lcom/dropbox/core/util/DumpWriter;
.end method

.method public abstract listStart()Lcom/dropbox/core/util/DumpWriter;
.end method

.method public abstract recordEnd()Lcom/dropbox/core/util/DumpWriter;
.end method

.method public abstract recordStart(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
.end method

.method public v(D)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .prologue
    .line 238
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    return-object v0
.end method

.method public v(F)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .prologue
    .line 237
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    return-object v0
.end method

.method public v(I)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .prologue
    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    return-object v0
.end method

.method public v(J)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .prologue
    .line 235
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    return-object v0
.end method

.method public v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 245
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 252
    :goto_0
    return-object p0

    .line 248
    :cond_0
    invoke-virtual {p1}, Lcom/dropbox/core/util/Dumpable;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->recordStart(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 249
    invoke-virtual {p1, p0}, Lcom/dropbox/core/util/Dumpable;->dumpFields(Lcom/dropbox/core/util/DumpWriter;)V

    .line 250
    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter;->recordEnd()Lcom/dropbox/core/util/DumpWriter;

    goto :goto_0
.end method

.method public v(Ljava/lang/Iterable;)Lcom/dropbox/core/util/DumpWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/dropbox/core/util/Dumpable;",
            ">;)",
            "Lcom/dropbox/core/util/DumpWriter;"
        }
    .end annotation

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 221
    :goto_0
    return-object p0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter;->listStart()Lcom/dropbox/core/util/DumpWriter;

    .line 216
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/util/Dumpable;

    .line 217
    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    goto :goto_1

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/dropbox/core/util/DumpWriter;->listEnd()Lcom/dropbox/core/util/DumpWriter;

    goto :goto_0
.end method

.method public v(Ljava/lang/Long;)Lcom/dropbox/core/util/DumpWriter;
    .locals 2

    .prologue
    .line 240
    if-nez p1, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 231
    :goto_0
    return-object p0

    .line 229
    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/util/StringUtil;->jq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    goto :goto_0
.end method

.method public v(Ljava/util/Date;)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .prologue
    .line 239
    invoke-static {p1}, Lcom/dropbox/core/util/DumpWriter;->toStringDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    return-object v0
.end method

.method public v(Z)Lcom/dropbox/core/util/DumpWriter;
    .locals 1

    .prologue
    .line 236
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    return-object v0
.end method

.method public abstract verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;
.end method
