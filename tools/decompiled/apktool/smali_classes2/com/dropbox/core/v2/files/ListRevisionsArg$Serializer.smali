.class Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListRevisionsArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/ListRevisionsArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/ListRevisionsArg;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 286
    .line 287
    if-nez p2, :cond_7

    .line 288
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 289
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    if-nez v0, :cond_6

    .line 293
    sget-object v2, Lcom/dropbox/core/v2/files/ListRevisionsMode;->PATH:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    .line 294
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 295
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 296
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 298
    const-string/jumbo v4, "path"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 310
    goto :goto_1

    .line 301
    :cond_0
    const-string/jumbo v4, "mode"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsMode$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ListRevisionsMode$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ListRevisionsMode;

    move-result-object v0

    move-object v2, v3

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    .line 304
    :cond_1
    const-string/jumbo v4, "limit"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 308
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 311
    :cond_3
    if-nez v3, :cond_4

    .line 312
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"path\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/dropbox/core/v2/files/ListRevisionsArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ListRevisionsMode;J)V

    .line 319
    if-nez p2, :cond_5

    .line 320
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 322
    :cond_5
    return-object v0

    .line 317
    :cond_6
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

    :cond_7
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
    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/ListRevisionsArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/ListRevisionsArg;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 269
    if-nez p3, :cond_0

    .line 270
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 272
    :cond_0
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 274
    const-string/jumbo v0, "mode"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 275
    sget-object v0, Lcom/dropbox/core/v2/files/ListRevisionsMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsMode$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;->mode:Lcom/dropbox/core/v2/files/ListRevisionsMode;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/ListRevisionsMode$Serializer;->serialize(Lcom/dropbox/core/v2/files/ListRevisionsMode;Lcom/d/a/a/g;)V

    .line 276
    const-string/jumbo v0, "limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;->limit:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 278
    if-nez p3, :cond_1

    .line 279
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 281
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
    .line 264
    check-cast p1, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->serialize(Lcom/dropbox/core/v2/files/ListRevisionsArg;Lcom/d/a/a/g;Z)V

    return-void
.end method
