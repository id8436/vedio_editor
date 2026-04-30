.class Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SharedFolderMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 531
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 586
    const/4 v1, 0x0

    .line 587
    if-nez p2, :cond_0

    .line 588
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 589
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 591
    :cond_0
    if-nez v1, :cond_19

    .line 592
    const/4 v2, 0x0

    .line 593
    const/4 v3, 0x0

    .line 594
    const/4 v4, 0x0

    .line 595
    const/4 v5, 0x0

    .line 596
    const/4 v6, 0x0

    .line 597
    const/4 v7, 0x0

    .line 598
    const/4 v8, 0x0

    .line 599
    const/4 v9, 0x0

    .line 600
    const/4 v10, 0x0

    .line 601
    const/4 v11, 0x0

    .line 602
    const/4 v12, 0x0

    .line 603
    const/4 v13, 0x0

    .line 604
    const/4 v14, 0x0

    .line 605
    const/4 v15, 0x0

    .line 606
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    sget-object v16, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    move-object/from16 v0, v16

    if-ne v1, v0, :cond_f

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-virtual/range {p1 .. p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 609
    const-string/jumbo v16, "access_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 610
    sget-object v1, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v2

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    :goto_1
    move-object v4, v1

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v3, v17

    .line 654
    goto :goto_0

    .line 612
    :cond_1
    const-string/jumbo v16, "is_inside_team_folder"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 613
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_1

    .line 615
    :cond_2
    const-string/jumbo v16, "is_team_folder"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 616
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto :goto_1

    .line 618
    :cond_3
    const-string/jumbo v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 619
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto :goto_1

    .line 621
    :cond_4
    const-string/jumbo v16, "policy"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 622
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/FolderPolicy;

    move-object v6, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto :goto_1

    .line 624
    :cond_5
    const-string/jumbo v16, "preview_url"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 625
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 627
    :cond_6
    const-string/jumbo v16, "shared_folder_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 628
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 630
    :cond_7
    const-string/jumbo v16, "time_invited"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 631
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    move-object v9, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 633
    :cond_8
    const-string/jumbo v16, "owner_display_names"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 634
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v10, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 636
    :cond_9
    const-string/jumbo v16, "owner_team"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 637
    sget-object v1, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/users/Team;

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 639
    :cond_a
    const-string/jumbo v16, "parent_shared_folder_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 640
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v12, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 642
    :cond_b
    const-string/jumbo v16, "path_lower"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 643
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 645
    :cond_c
    const-string/jumbo v16, "link_metadata"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 646
    sget-object v1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    move-object v14, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 648
    :cond_d
    const-string/jumbo v16, "permissions"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 649
    sget-object v1, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v15, v1

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 652
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v1, v4

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    goto/16 :goto_1

    .line 655
    :cond_f
    if-nez v2, :cond_10

    .line 656
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"access_type\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 658
    :cond_10
    if-nez v3, :cond_11

    .line 659
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"is_inside_team_folder\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 661
    :cond_11
    if-nez v4, :cond_12

    .line 662
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"is_team_folder\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 664
    :cond_12
    if-nez v5, :cond_13

    .line 665
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 667
    :cond_13
    if-nez v6, :cond_14

    .line 668
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"policy\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 670
    :cond_14
    if-nez v7, :cond_15

    .line 671
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"preview_url\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 673
    :cond_15
    if-nez v8, :cond_16

    .line 674
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"shared_folder_id\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 676
    :cond_16
    if-nez v9, :cond_17

    .line 677
    new-instance v1, Lcom/d/a/a/j;

    const-string/jumbo v2, "Required field \"time_invited\" missing."

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    .line 679
    :cond_17
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct/range {v1 .. v15}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;ZZLjava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;)V

    .line 684
    if-nez p2, :cond_18

    .line 685
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 687
    :cond_18
    return-object v1

    .line 682
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
    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 535
    if-nez p3, :cond_0

    .line 536
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 538
    :cond_0
    const-string/jumbo v0, "access_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 539
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/d/a/a/g;)V

    .line 540
    const-string/jumbo v0, "is_inside_team_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 541
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isInsideTeamFolder:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 542
    const-string/jumbo v0, "is_team_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->isTeamFolder:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 544
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 546
    const-string/jumbo v0, "policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 547
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/FolderPolicy$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 548
    const-string/jumbo v0, "preview_url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 550
    const-string/jumbo v0, "shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 551
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 552
    const-string/jumbo v0, "time_invited"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 553
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->timeInvited:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 554
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 555
    const-string/jumbo v0, "owner_display_names"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerDisplayNames:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 558
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eqz v0, :cond_2

    .line 559
    const-string/jumbo v0, "owner_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 560
    sget-object v0, Lcom/dropbox/core/v2/users/Team$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Team$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 562
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 563
    const-string/jumbo v0, "parent_shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->parentSharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 566
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 567
    const-string/jumbo v0, "path_lower"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 570
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eqz v0, :cond_5

    .line 571
    const-string/jumbo v0, "link_metadata"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 572
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 574
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 575
    const-string/jumbo v0, "permissions"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 576
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->permissions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 578
    :cond_6
    if-nez p3, :cond_7

    .line 579
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 581
    :cond_7
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
    .line 530
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;Lcom/d/a/a/g;Z)V

    return-void
.end method
