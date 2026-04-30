.class Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GroupsSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupsSelector;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupsSelector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 319
    const/4 v1, 0x1

    .line 320
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 328
    :goto_0
    if-nez v0, :cond_1

    .line 329
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    const/4 v1, 0x0

    .line 325
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 326
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 331
    :cond_1
    const-string/jumbo v2, "group_ids"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 333
    const-string/jumbo v0, "group_ids"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 334
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 335
    invoke-static {v0}, Lcom/dropbox/core/v2/team/GroupsSelector;->groupIds(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupsSelector;

    move-result-object v0

    .line 346
    :goto_1
    if-nez v1, :cond_2

    .line 347
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 348
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 350
    :cond_2
    return-object v0

    .line 337
    :cond_3
    const-string/jumbo v2, "group_external_ids"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 339
    const-string/jumbo v0, "group_external_ids"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 340
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 341
    invoke-static {v0}, Lcom/dropbox/core/v2/team/GroupsSelector;->groupExternalIds(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupsSelector;

    move-result-object v0

    goto :goto_1

    .line 344
    :cond_4
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupsSelector;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupsSelector;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsSelector$1;->$SwitchMap$com$dropbox$core$v2$team$GroupsSelector$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupsSelector;->tag()Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/GroupsSelector$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupsSelector;->tag()Lcom/dropbox/core/v2/team/GroupsSelector$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 293
    const-string/jumbo v0, "group_ids"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 294
    const-string/jumbo v0, "group_ids"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsSelector;->access$000(Lcom/dropbox/core/v2/team/GroupsSelector;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 296
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 311
    :goto_0
    return-void

    .line 300
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 301
    const-string/jumbo v0, "group_external_ids"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 302
    const-string/jumbo v0, "group_external_ids"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupsSelector;->access$100(Lcom/dropbox/core/v2/team/GroupsSelector;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 304
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 285
    check-cast p1, Lcom/dropbox/core/v2/team/GroupsSelector;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupsSelector;Lcom/d/a/a/g;)V

    return-void
.end method
