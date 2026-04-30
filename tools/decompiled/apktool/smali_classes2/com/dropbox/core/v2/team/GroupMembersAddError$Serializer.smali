.class Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GroupMembersAddError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/GroupMembersAddError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 520
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupMembersAddError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 585
    const/4 v1, 0x1

    .line 586
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 587
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 594
    :goto_0
    if-nez v0, :cond_1

    .line 595
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_0
    const/4 v1, 0x0

    .line 591
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 592
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 597
    :cond_1
    const-string/jumbo v2, "group_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 598
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->GROUP_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    .line 636
    :goto_1
    if-nez v1, :cond_2

    .line 637
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 638
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 640
    :cond_2
    return-object v0

    .line 600
    :cond_3
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 601
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->OTHER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    goto :goto_1

    .line 603
    :cond_4
    const-string/jumbo v2, "system_managed_group_disallowed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 604
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->SYSTEM_MANAGED_GROUP_DISALLOWED:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    goto :goto_1

    .line 606
    :cond_5
    const-string/jumbo v2, "duplicate_user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 607
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->DUPLICATE_USER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    goto :goto_1

    .line 609
    :cond_6
    const-string/jumbo v2, "group_not_in_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 610
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->GROUP_NOT_IN_TEAM:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    goto :goto_1

    .line 612
    :cond_7
    const-string/jumbo v2, "members_not_in_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 614
    const-string/jumbo v0, "members_not_in_team"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 615
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 616
    invoke-static {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->membersNotInTeam(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    goto :goto_1

    .line 618
    :cond_8
    const-string/jumbo v2, "users_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 620
    const-string/jumbo v0, "users_not_found"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 621
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 622
    invoke-static {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->usersNotFound(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    goto :goto_1

    .line 624
    :cond_9
    const-string/jumbo v2, "user_must_be_active_to_be_owner"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 625
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;->USER_MUST_BE_ACTIVE_TO_BE_OWNER:Lcom/dropbox/core/v2/team/GroupMembersAddError;

    goto/16 :goto_1

    .line 627
    :cond_a
    const-string/jumbo v2, "user_cannot_be_manager_of_company_managed_group"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 629
    const-string/jumbo v0, "user_cannot_be_manager_of_company_managed_group"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 630
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 631
    invoke-static {v0}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->userCannotBeManagerOfCompanyManagedGroup(Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    goto/16 :goto_1

    .line 634
    :cond_b
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
    .line 519
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/GroupMembersAddError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/GroupMembersAddError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 524
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersAddError$1;->$SwitchMap$com$dropbox$core$v2$team$GroupMembersAddError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->tag()Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 574
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->tag()Lcom/dropbox/core/v2/team/GroupMembersAddError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :pswitch_0
    const-string/jumbo v0, "group_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 530
    :pswitch_1
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :pswitch_2
    const-string/jumbo v0, "system_managed_group_disallowed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :pswitch_3
    const-string/jumbo v0, "duplicate_user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :pswitch_4
    const-string/jumbo v0, "group_not_in_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :pswitch_5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 547
    const-string/jumbo v0, "members_not_in_team"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 548
    const-string/jumbo v0, "members_not_in_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->access$000(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 550
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 554
    :pswitch_6
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 555
    const-string/jumbo v0, "users_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 556
    const-string/jumbo v0, "users_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->access$100(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 558
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 562
    :pswitch_7
    const-string/jumbo v0, "user_must_be_active_to_be_owner"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :pswitch_8
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 567
    const-string/jumbo v0, "user_cannot_be_manager_of_company_managed_group"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 568
    const-string/jumbo v0, "user_cannot_be_manager_of_company_managed_group"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupMembersAddError;->access$200(Lcom/dropbox/core/v2/team/GroupMembersAddError;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 570
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
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
    .line 519
    check-cast p1, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->serialize(Lcom/dropbox/core/v2/team/GroupMembersAddError;Lcom/d/a/a/g;)V

    return-void
.end method
