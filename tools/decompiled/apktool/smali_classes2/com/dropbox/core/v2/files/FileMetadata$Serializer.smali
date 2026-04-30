.class Lcom/dropbox/core/v2/files/FileMetadata$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FileMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/FileMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 630
    new-instance v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 690
    const/4 v2, 0x0

    .line 691
    if-nez p2, :cond_0

    .line 692
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 693
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v2

    .line 694
    const-string/jumbo v3, "file"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 695
    const/4 v2, 0x0

    .line 698
    :cond_0
    if-nez v2, :cond_17

    .line 699
    const/4 v3, 0x0

    .line 700
    const/4 v4, 0x0

    .line 701
    const/4 v5, 0x0

    .line 702
    const/4 v6, 0x0

    .line 703
    const/4 v7, 0x0

    .line 704
    const/4 v8, 0x0

    .line 705
    const/4 v10, 0x0

    .line 706
    const/4 v11, 0x0

    .line 707
    const/4 v12, 0x0

    .line 708
    const/4 v13, 0x0

    .line 709
    const/4 v14, 0x0

    .line 710
    const/4 v15, 0x0

    .line 711
    const/16 v16, 0x0

    .line 712
    const/16 v17, 0x0

    .line 713
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v9, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v2, v9, :cond_f

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-virtual/range {p1 .. p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 716
    const-string/jumbo v9, "name"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 717
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    move-object v2, v8

    :goto_1
    move-object v8, v2

    .line 761
    goto :goto_0

    .line 719
    :cond_1
    const-string/jumbo v9, "id"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 720
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    move-object v2, v8

    goto :goto_1

    .line 722
    :cond_2
    const-string/jumbo v9, "client_modified"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 723
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    move-object v5, v2

    move-object v2, v8

    goto :goto_1

    .line 725
    :cond_3
    const-string/jumbo v9, "server_modified"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 726
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Date;

    move-object v6, v2

    move-object v2, v8

    goto :goto_1

    .line 728
    :cond_4
    const-string/jumbo v9, "rev"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 729
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v7, v2

    move-object v2, v8

    goto :goto_1

    .line 731
    :cond_5
    const-string/jumbo v9, "size"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 732
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    goto :goto_1

    .line 734
    :cond_6
    const-string/jumbo v9, "path_lower"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 735
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v10, v2

    move-object v2, v8

    goto/16 :goto_1

    .line 737
    :cond_7
    const-string/jumbo v9, "path_display"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 738
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v11, v2

    move-object v2, v8

    goto/16 :goto_1

    .line 740
    :cond_8
    const-string/jumbo v9, "parent_shared_folder_id"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 741
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v12, v2

    move-object v2, v8

    goto/16 :goto_1

    .line 743
    :cond_9
    const-string/jumbo v9, "media_info"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 744
    sget-object v2, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaInfo$Serializer;

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/core/v2/files/MediaInfo;

    move-object v13, v2

    move-object v2, v8

    goto/16 :goto_1

    .line 746
    :cond_a
    const-string/jumbo v9, "sharing_info"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 747
    sget-object v2, Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/core/v2/files/FileSharingInfo;

    move-object v14, v2

    move-object v2, v8

    goto/16 :goto_1

    .line 749
    :cond_b
    const-string/jumbo v9, "property_groups"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 750
    sget-object v2, Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v15, v2

    move-object v2, v8

    goto/16 :goto_1

    .line 752
    :cond_c
    const-string/jumbo v9, "has_explicit_shared_members"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 753
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object/from16 v16, v2

    move-object v2, v8

    goto/16 :goto_1

    .line 755
    :cond_d
    const-string/jumbo v9, "content_hash"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 756
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v2

    move-object v2, v8

    goto/16 :goto_1

    .line 759
    :cond_e
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v2, v8

    goto/16 :goto_1

    .line 762
    :cond_f
    if-nez v3, :cond_10

    .line 763
    new-instance v2, Lcom/d/a/a/j;

    const-string/jumbo v3, "Required field \"name\" missing."

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v2

    .line 765
    :cond_10
    if-nez v4, :cond_11

    .line 766
    new-instance v2, Lcom/d/a/a/j;

    const-string/jumbo v3, "Required field \"id\" missing."

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v2

    .line 768
    :cond_11
    if-nez v5, :cond_12

    .line 769
    new-instance v2, Lcom/d/a/a/j;

    const-string/jumbo v3, "Required field \"client_modified\" missing."

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v2

    .line 771
    :cond_12
    if-nez v6, :cond_13

    .line 772
    new-instance v2, Lcom/d/a/a/j;

    const-string/jumbo v3, "Required field \"server_modified\" missing."

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v2

    .line 774
    :cond_13
    if-nez v7, :cond_14

    .line 775
    new-instance v2, Lcom/d/a/a/j;

    const-string/jumbo v3, "Required field \"rev\" missing."

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v2

    .line 777
    :cond_14
    if-nez v8, :cond_15

    .line 778
    new-instance v2, Lcom/d/a/a/j;

    const-string/jumbo v3, "Required field \"size\" missing."

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v3}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v2

    .line 780
    :cond_15
    new-instance v2, Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct/range {v2 .. v17}, Lcom/dropbox/core/v2/files/FileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/files/MediaInfo;Lcom/dropbox/core/v2/files/FileSharingInfo;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 785
    if-nez p2, :cond_16

    .line 786
    invoke-static/range {p1 .. p1}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 788
    :cond_16
    return-object v2

    .line 783
    :cond_17
    new-instance v3, Lcom/d/a/a/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No subtype found that matches tag: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v2}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v3
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
    .line 629
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/d/a/a/g;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 634
    if-nez p3, :cond_0

    .line 635
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 637
    :cond_0
    const-string/jumbo v0, "file"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 638
    const-string/jumbo v0, "name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 639
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 640
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 642
    const-string/jumbo v0, "client_modified"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->clientModified:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 644
    const-string/jumbo v0, "server_modified"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 645
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->timestamp()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->serverModified:Ljava/util/Date;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 646
    const-string/jumbo v0, "rev"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 647
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->rev:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 648
    const-string/jumbo v0, "size"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-wide v2, p1, Lcom/dropbox/core/v2/files/FileMetadata;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 650
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->pathLower:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 651
    const-string/jumbo v0, "path_lower"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->pathLower:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 654
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->pathDisplay:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 655
    const-string/jumbo v0, "path_display"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 656
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->pathDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 658
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 659
    const-string/jumbo v0, "parent_shared_folder_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->parentSharedFolderId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 662
    :cond_3
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    if-eqz v0, :cond_4

    .line 663
    const-string/jumbo v0, "media_info"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 664
    sget-object v0, Lcom/dropbox/core/v2/files/MediaInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/MediaInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->mediaInfo:Lcom/dropbox/core/v2/files/MediaInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 666
    :cond_4
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    if-eqz v0, :cond_5

    .line 667
    const-string/jumbo v0, "sharing_info"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 668
    sget-object v0, Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullableStruct(Lcom/dropbox/core/stone/StructSerializer;)Lcom/dropbox/core/stone/StructSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->sharingInfo:Lcom/dropbox/core/v2/files/FileSharingInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 670
    :cond_5
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 671
    const-string/jumbo v0, "property_groups"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 672
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertyGroup$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->propertyGroups:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 674
    :cond_6
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 675
    const-string/jumbo v0, "has_explicit_shared_members"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 676
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->hasExplicitSharedMembers:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 678
    :cond_7
    iget-object v0, p1, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 679
    const-string/jumbo v0, "content_hash"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 680
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/files/FileMetadata;->contentHash:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 682
    :cond_8
    if-nez p3, :cond_9

    .line 683
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 685
    :cond_9
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
    .line 629
    check-cast p1, Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/d/a/a/g;Z)V

    return-void
.end method
