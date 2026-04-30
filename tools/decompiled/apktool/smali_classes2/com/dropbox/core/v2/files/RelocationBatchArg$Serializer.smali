.class Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "RelocationBatchArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/RelocationBatchArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/RelocationBatchArg;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 327
    .line 328
    if-nez p2, :cond_8

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 330
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_0
    if-nez v0, :cond_7

    .line 334
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 335
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 336
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 337
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v5, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v5, :cond_4

    .line 338
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 340
    const-string/jumbo v5, "entries"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 341
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationPath$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationPath$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v6

    :goto_2
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 355
    goto :goto_1

    .line 343
    :cond_0
    const-string/jumbo v5, "allow_shared_folder"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 344
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v4

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    .line 346
    :cond_1
    const-string/jumbo v5, "autorename"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 347
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v3

    move-object v3, v4

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 349
    :cond_2
    const-string/jumbo v5, "allow_ownership_transfer"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 353
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 356
    :cond_4
    if-nez v4, :cond_5

    .line 357
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"entries\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_5
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;ZZZ)V

    .line 364
    if-nez p2, :cond_6

    .line 365
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 367
    :cond_6
    return-object v0

    .line 362
    :cond_7
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

    :cond_8
    move-object v0, v4

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
    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/RelocationBatchArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/RelocationBatchArg;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 308
    if-nez p3, :cond_0

    .line 309
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 311
    :cond_0
    const-string/jumbo v0, "entries"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationPath$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationPath$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;->entries:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 313
    const-string/jumbo v0, "allow_shared_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowSharedFolder:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 315
    const-string/jumbo v0, "autorename"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;->autorename:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 317
    const-string/jumbo v0, "allow_ownership_transfer"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;->allowOwnershipTransfer:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 319
    if-nez p3, :cond_1

    .line 320
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 322
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
    .line 303
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationBatchArg;Lcom/d/a/a/g;Z)V

    return-void
.end method
