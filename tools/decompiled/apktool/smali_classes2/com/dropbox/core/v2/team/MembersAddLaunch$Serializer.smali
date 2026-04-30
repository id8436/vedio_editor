.class Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MembersAddLaunch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MembersAddLaunch;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 310
    const/4 v1, 0x1

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 319
    :goto_0
    if-nez v0, :cond_1

    .line 320
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    const/4 v1, 0x0

    .line 316
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 317
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    :cond_1
    const-string/jumbo v2, "async_job_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 324
    const-string/jumbo v0, "async_job_id"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 325
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 326
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object v0

    .line 337
    :goto_1
    if-nez v1, :cond_2

    .line 338
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 339
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 341
    :cond_2
    return-object v0

    .line 328
    :cond_3
    const-string/jumbo v2, "complete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    const-string/jumbo v0, "complete"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 331
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 332
    invoke-static {v0}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->complete(Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object v0

    goto :goto_1

    .line 335
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
    .line 276
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MembersAddLaunch;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 281
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddLaunch$1;->$SwitchMap$com$dropbox$core$v2$team$MembersAddLaunch$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->tag()Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->tag()Lcom/dropbox/core/v2/team/MembersAddLaunch$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 284
    const-string/jumbo v0, "async_job_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 285
    const-string/jumbo v0, "async_job_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->access$000(Lcom/dropbox/core/v2/team/MembersAddLaunch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 287
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 302
    :goto_0
    return-void

    .line 291
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 292
    const-string/jumbo v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 293
    const-string/jumbo v0, "complete"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberAddResult$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersAddLaunch;->access$100(Lcom/dropbox/core/v2/team/MembersAddLaunch;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 295
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 281
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
    .line 276
    check-cast p1, Lcom/dropbox/core/v2/team/MembersAddLaunch;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->serialize(Lcom/dropbox/core/v2/team/MembersAddLaunch;Lcom/d/a/a/g;)V

    return-void
.end method
