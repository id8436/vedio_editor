.class Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "PropertyGroupUpdate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 294
    .line 295
    if-nez p2, :cond_7

    .line 296
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 297
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_0
    if-nez v0, :cond_6

    move-object v2, v1

    move-object v3, v1

    .line 303
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 304
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 306
    const-string/jumbo v4, "template_id"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
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

    .line 318
    goto :goto_1

    .line 309
    :cond_0
    const-string/jumbo v4, "add_or_update_fields"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyField$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyField$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 312
    :cond_1
    const-string/jumbo v4, "remove_fields"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 316
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 319
    :cond_3
    if-nez v3, :cond_4

    .line 320
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"template_id\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 327
    if-nez p2, :cond_5

    .line 328
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 330
    :cond_5
    return-object v0

    .line 325
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
    move-object v0, v1

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
    .line 268
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 273
    if-nez p3, :cond_0

    .line 274
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 276
    :cond_0
    const-string/jumbo v0, "template_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 278
    iget-object v0, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 279
    const-string/jumbo v0, "add_or_update_fields"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 280
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyField$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyField$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->addOrUpdateFields:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 282
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 283
    const-string/jumbo v0, "remove_fields"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;->removeFields:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 286
    :cond_2
    if-nez p3, :cond_3

    .line 287
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 289
    :cond_3
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
    .line 268
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;Lcom/d/a/a/g;Z)V

    return-void
.end method
