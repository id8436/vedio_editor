.class Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GroupMembersRemoveError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupMembersRemoveError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 396
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 449
    const/4 v1, 0x1

    .line 450
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 458
    :goto_0
    if-nez v0, :cond_1

    .line 459
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    const/4 v1, 0x0

    .line 455
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 456
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 461
    :cond_1
    const-string/jumbo v2, "group_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    .line 491
    :goto_1
    if-nez v1, :cond_2

    .line 492
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 493
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 495
    :cond_2
    return-object v0

    .line 464
    :cond_3
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 465
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    goto :goto_1

    .line 467
    :cond_4
    const-string/jumbo v2, "system_managed_group_disallowed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 468
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    goto :goto_1

    .line 470
    :cond_5
    const-string/jumbo v2, "member_not_in_group"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 471
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->MEMBER_NOT_IN_GROUP:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    goto :goto_1

    .line 473
    :cond_6
    const-string/jumbo v2, "group_not_in_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 474
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    goto :goto_1

    .line 476
    :cond_7
    const-string/jumbo v2, "members_not_in_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 478
    const-string/jumbo v0, "members_not_in_team"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 479
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 480
    invoke-static {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->membersNotInTeam(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    goto :goto_1

    .line 482
    :cond_8
    const-string/jumbo v2, "users_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 484
    const-string/jumbo v0, "users_not_found"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 485
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 486
    invoke-static {v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->usersNotFound(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    goto :goto_1

    .line 489
    :cond_9
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
    .line 395
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupMembersRemoveError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 400
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupMembersRemoveError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->tag()Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->tag()Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :pswitch_0
    const-string/jumbo v0, "group_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 441
    :goto_0
    return-void

    .line 406
    :pswitch_1
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :pswitch_2
    const-string/jumbo v0, "system_managed_group_disallowed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 414
    :pswitch_3
    const-string/jumbo v0, "member_not_in_group"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :pswitch_4
    const-string/jumbo v0, "group_not_in_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :pswitch_5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 423
    const-string/jumbo v0, "members_not_in_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 424
    const-string/jumbo v0, "members_not_in_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->access$000(Lcom/dropbox/core/v2/team/GroupMembersRemoveError;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 426
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 430
    :pswitch_6
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 431
    const-string/jumbo v0, "users_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 432
    const-string/jumbo v0, "users_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;->access$100(Lcom/dropbox/core/v2/team/GroupMembersRemoveError;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 434
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
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
    .line 395
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupMembersRemoveError;Lcom/d/a/a/g;)V

    return-void
.end method
