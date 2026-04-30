.class Lcom/dropbox/core/v2/files/SearchArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SearchArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SearchArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SearchArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/dropbox/core/v2/files/SearchArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/SearchArg;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 367
    .line 368
    if-nez p2, :cond_a

    .line 369
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 370
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_0
    if-nez v0, :cond_9

    .line 375
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 376
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 377
    sget-object v8, Lcom/dropbox/core/v2/files/SearchMode;->FILENAME:Lcom/dropbox/core/v2/files/SearchMode;

    move-object v2, v3

    .line 378
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_5

    .line 379
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 381
    const-string/jumbo v1, "path"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v4

    move-object v2, v0

    move-object v0, v6

    :goto_2
    move-object v6, v0

    move-object v4, v1

    .line 399
    goto :goto_1

    .line 384
    :cond_0
    const-string/jumbo v1, "query"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v4

    move-object v3, v0

    move-object v0, v6

    goto :goto_2

    .line 387
    :cond_1
    const-string/jumbo v1, "start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 390
    :cond_2
    const-string/jumbo v1, "max_results"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v4

    goto :goto_2

    .line 393
    :cond_3
    const-string/jumbo v1, "mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 394
    sget-object v0, Lcom/dropbox/core/v2/files/SearchMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchMode$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/SearchMode$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/SearchMode;

    move-result-object v8

    move-object v0, v6

    move-object v1, v4

    goto :goto_2

    .line 397
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v6

    move-object v1, v4

    goto :goto_2

    .line 400
    :cond_5
    if-nez v2, :cond_6

    .line 401
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"path\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_6
    if-nez v3, :cond_7

    .line 404
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"query\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_7
    new-instance v1, Lcom/dropbox/core/v2/files/SearchArg;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/core/v2/files/SearchArg;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/dropbox/core/v2/files/SearchMode;)V

    .line 411
    if-nez p2, :cond_8

    .line 412
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 414
    :cond_8
    return-object v1

    .line 409
    :cond_9
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/SearchArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SearchArg;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 346
    if-nez p3, :cond_0

    .line 347
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 349
    :cond_0
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/SearchArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 351
    const-string/jumbo v0, "query"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/SearchArg;->query:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 353
    const-string/jumbo v0, "start"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/SearchArg;->start:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 355
    const-string/jumbo v0, "max_results"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/SearchArg;->maxResults:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 357
    const-string/jumbo v0, "mode"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/dropbox/core/v2/files/SearchMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchMode$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/SearchArg;->mode:Lcom/dropbox/core/v2/files/SearchMode;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/SearchMode$Serializer;->serialize(Lcom/dropbox/core/v2/files/SearchMode;Lcom/d/a/a/g;)V

    .line 359
    if-nez p3, :cond_1

    .line 360
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 362
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 341
    check-cast p1, Lcom/dropbox/core/v2/files/SearchArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->serialize(Lcom/dropbox/core/v2/files/SearchArg;Lcom/d/a/a/g;Z)V

    return-void
.end method
