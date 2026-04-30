.class Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UserSelectorArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/UserSelectorArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 346
    new-instance v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 387
    const/4 v1, 0x1

    .line 388
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 396
    :goto_0
    if-nez v0, :cond_1

    .line 397
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    const/4 v1, 0x0

    .line 393
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 394
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_1
    const-string/jumbo v2, "team_member_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    const-string/jumbo v0, "team_member_id"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 402
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 403
    invoke-static {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;->teamMemberId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v0

    .line 420
    :goto_1
    if-nez v1, :cond_2

    .line 421
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 422
    invoke-static {p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 424
    :cond_2
    return-object v0

    .line 405
    :cond_3
    const-string/jumbo v2, "external_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 407
    const-string/jumbo v0, "external_id"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 408
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 409
    invoke-static {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;->externalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v0

    goto :goto_1

    .line 411
    :cond_4
    const-string/jumbo v2, "email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 413
    const-string/jumbo v0, "email"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 414
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 415
    invoke-static {v0}, Lcom/dropbox/core/v2/team/UserSelectorArg;->email(Ljava/lang/String;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v0

    goto :goto_1

    .line 418
    :cond_5
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
    .line 345
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/UserSelectorArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 350
    sget-object v0, Lcom/dropbox/core/v2/team/UserSelectorArg$1;->$SwitchMap$com$dropbox$core$v2$team$UserSelectorArg$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/UserSelectorArg;->tag()Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/UserSelectorArg;->tag()Lcom/dropbox/core/v2/team/UserSelectorArg$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 353
    const-string/jumbo v0, "team_member_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 354
    const-string/jumbo v0, "team_member_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/UserSelectorArg;->access$000(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 356
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 379
    :goto_0
    return-void

    .line 360
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 361
    const-string/jumbo v0, "external_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 362
    const-string/jumbo v0, "external_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/UserSelectorArg;->access$100(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 364
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 368
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 369
    const-string/jumbo v0, "email"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 370
    const-string/jumbo v0, "email"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/UserSelectorArg;->access$200(Lcom/dropbox/core/v2/team/UserSelectorArg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 372
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 345
    check-cast p1, Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/d/a/a/g;)V

    return-void
.end method
