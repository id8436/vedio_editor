.class Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ThumbnailArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/ThumbnailArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/ThumbnailArg;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 282
    .line 283
    if-nez p2, :cond_7

    .line 284
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 285
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    if-nez v0, :cond_6

    .line 289
    sget-object v2, Lcom/dropbox/core/v2/files/ThumbnailFormat;->JPEG:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    .line 290
    sget-object v1, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    .line 291
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 292
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 294
    const-string/jumbo v4, "path"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 306
    goto :goto_1

    .line 297
    :cond_0
    const-string/jumbo v4, "format"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 298
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ThumbnailFormat;

    move-result-object v0

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 300
    :cond_1
    const-string/jumbo v4, "size"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 301
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ThumbnailSize;

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 304
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 307
    :cond_3
    if-nez v3, :cond_4

    .line 308
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"path\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailArg;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/files/ThumbnailArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/dropbox/core/v2/files/ThumbnailSize;)V

    .line 315
    if-nez p2, :cond_5

    .line 316
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 318
    :cond_5
    return-object v0

    .line 313
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
    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/ThumbnailArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/ThumbnailArg;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 265
    if-nez p3, :cond_0

    .line 266
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 268
    :cond_0
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 269
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 270
    const-string/jumbo v0, "format"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->format:Lcom/dropbox/core/v2/files/ThumbnailFormat;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/ThumbnailFormat$Serializer;->serialize(Lcom/dropbox/core/v2/files/ThumbnailFormat;Lcom/d/a/a/g;)V

    .line 272
    const-string/jumbo v0, "size"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/files/ThumbnailArg;->size:Lcom/dropbox/core/v2/files/ThumbnailSize;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->serialize(Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/d/a/a/g;)V

    .line 274
    if-nez p3, :cond_1

    .line 275
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 277
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
    .line 260
    check-cast p1, Lcom/dropbox/core/v2/files/ThumbnailArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->serialize(Lcom/dropbox/core/v2/files/ThumbnailArg;Lcom/d/a/a/g;Z)V

    return-void
.end method
