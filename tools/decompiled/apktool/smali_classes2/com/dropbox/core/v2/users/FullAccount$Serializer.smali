.class Lcom/dropbox/core/v2/users/FullAccount$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FullAccount.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/FullAccount;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/FullAccount$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 507
    new-instance v0, Lcom/dropbox/core/v2/users/FullAccount$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullAccount$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/users/FullAccount;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 556
    const/4 v1, 0x0

    .line 557
    if-nez p2, :cond_0

    .line 558
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 559
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 561
    :cond_0
    if-nez v1, :cond_19

    .line 562
    const/4 v2, 0x0

    .line 563
    const/4 v3, 0x0

    .line 564
    const/4 v4, 0x0

    .line 565
    const/4 v5, 0x0

    .line 566
    const/4 v6, 0x0

    .line 567
    const/4 v7, 0x0

    .line 568
    const/4 v8, 0x0

    .line 569
    const/4 v9, 0x0

    .line 570
    const/4 v10, 0x0

    .line 571
    const/4 v11, 0x0

    .line 572
    const/4 v12, 0x0

    .line 573
    const/4 v13, 0x0

    .line 574
    const/4 v14, 0x0

    .line 575
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    sget-object v15, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v1, v15, :cond_e

    .line 576
    invoke-virtual/range {p1 .. p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 577
    invoke-virtual/range {p1 .. p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 578
    const-string/jumbo v15, "account_id"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 579
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v6

    move-object v6, v1

    move-object v1, v9

    move-object/from16 v16, v3

    move-object v3, v5

    move-object/from16 v5, v16

    :goto_1
    move-object v9, v1

    move-object/from16 v16, v2

    move-object v2, v6

    move-object/from16 v6, v16

    move-object/from16 v17, v5

    move-object v5, v3

    move-object/from16 v3, v17

    .line 620
    goto :goto_0

    .line 581
    :cond_1
    const-string/jumbo v15, "name"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 582
    sget-object v1, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/users/Name$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/users/Name;

    move-object v3, v5

    move-object v5, v1

    move-object v1, v9

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    goto :goto_1

    .line 584
    :cond_2
    const-string/jumbo v15, "email"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 585
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    move-object v1, v9

    move-object/from16 v16, v5

    move-object v5, v3

    move-object/from16 v3, v16

    move-object/from16 v17, v6

    move-object v6, v2

    move-object/from16 v2, v17

    goto :goto_1

    .line 587
    :cond_3
    const-string/jumbo v15, "email_verified"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 588
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object v5, v3

    move-object v3, v1

    move-object v1, v9

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    goto :goto_1

    .line 590
    :cond_4
    const-string/jumbo v15, "disabled"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 591
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v9

    move-object/from16 v16, v3

    move-object v3, v5

    move-object/from16 v5, v16

    goto/16 :goto_1

    .line 593
    :cond_5
    const-string/jumbo v15, "locale"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 594
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v9

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 596
    :cond_6
    const-string/jumbo v15, "referral_link"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 597
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    move-object v1, v9

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 599
    :cond_7
    const-string/jumbo v15, "is_paired"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 600
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 602
    :cond_8
    const-string/jumbo v15, "account_type"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 603
    sget-object v1, Lcom/dropbox/core/v2/userscommon/AccountType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/userscommon/AccountType$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/userscommon/AccountType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/userscommon/AccountType;

    move-result-object v10

    move-object v1, v9

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 605
    :cond_9
    const-string/jumbo v15, "profile_photo_url"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 606
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v11, v1

    move-object v1, v9

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 608
    :cond_a
    const-string/jumbo v15, "country"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 609
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    move-object v1, v9

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 611
    :cond_b
    const-string/jumbo v15, "team"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 612
    sget-object v1, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullTeam$Serializer;

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/users/FullTeam;

    move-object v13, v1

    move-object v1, v9

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 614
    :cond_c
    const-string/jumbo v15, "team_member_id"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 615
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v14, v1

    move-object v1, v9

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 618
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v1, v9

    move-object/from16 v16, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v3

    move-object v3, v5

    move-object/from16 v5, v17

    goto/16 :goto_1

    .line 621
    :cond_e
    if-nez v2, :cond_f

    .line 622
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"account_id\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 624
    :cond_f
    if-nez v3, :cond_10

    .line 625
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_10
    if-nez v4, :cond_11

    .line 628
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"email\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 630
    :cond_11
    if-nez v5, :cond_12

    .line 631
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"email_verified\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 633
    :cond_12
    if-nez v6, :cond_13

    .line 634
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"disabled\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 636
    :cond_13
    if-nez v7, :cond_14

    .line 637
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"locale\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 639
    :cond_14
    if-nez v8, :cond_15

    .line 640
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"referral_link\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 642
    :cond_15
    if-nez v9, :cond_16

    .line 643
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"is_paired\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 645
    :cond_16
    if-nez v10, :cond_17

    .line 646
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"account_type\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_17
    new-instance v1, Lcom/dropbox/core/v2/users/FullAccount;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-direct/range {v1 .. v14}, Lcom/dropbox/core/v2/users/FullAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/users/FullTeam;Ljava/lang/String;)V

    .line 653
    if-nez p2, :cond_18

    .line 654
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 656
    :cond_18
    return-object v1

    .line 651
    :cond_19
    new-instance v2, Lcom/d/a/a/j;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No subtype found that matches tag: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v2
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
    .line 506
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/users/FullAccount;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/FullAccount;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 511
    if-nez p3, :cond_0

    .line 512
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 514
    :cond_0
    const-string/jumbo v0, "account_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 516
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/users/Name$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 518
    const-string/jumbo v0, "email"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 519
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 520
    const-string/jumbo v0, "email_verified"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 522
    const-string/jumbo v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 524
    const-string/jumbo v0, "locale"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 525
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 526
    const-string/jumbo v0, "referral_link"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 528
    const-string/jumbo v0, "is_paired"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 530
    const-string/jumbo v0, "account_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 531
    sget-object v0, Lcom/dropbox/core/v2/userscommon/AccountType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/userscommon/AccountType$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/userscommon/AccountType$Serializer;->serialize(Lcom/dropbox/core/v2/userscommon/AccountType;Lcom/d/a/a/g;)V

    .line 532
    iget-object v0, p1, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 533
    const-string/jumbo v0, "profile_photo_url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 536
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 537
    const-string/jumbo v0, "country"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 538
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 540
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    if-eqz v0, :cond_3

    .line 541
    const-string/jumbo v0, "team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 542
    sget-object v0, Lcom/dropbox/core/v2/users/FullTeam$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullTeam$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 544
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 545
    const-string/jumbo v0, "team_member_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 546
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 548
    :cond_4
    if-nez p3, :cond_5

    .line 549
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 551
    :cond_5
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
    .line 506
    check-cast p1, Lcom/dropbox/core/v2/users/FullAccount;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->serialize(Lcom/dropbox/core/v2/users/FullAccount;Lcom/d/a/a/g;Z)V

    return-void
.end method
