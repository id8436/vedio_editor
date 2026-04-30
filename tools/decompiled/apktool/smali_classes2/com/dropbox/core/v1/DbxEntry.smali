.class public abstract Lcom/dropbox/core/v1/DbxEntry;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

.field private static final FM_bytes:I = 0x1

.field private static final FM_client_mtime:I = 0x9

.field private static final FM_contents:I = 0xb

.field private static final FM_hash:I = 0xa

.field private static final FM_icon:I = 0x7

.field private static final FM_is_deleted:I = 0x4

.field private static final FM_is_dir:I = 0x3

.field private static final FM_modified:I = 0x8

.field private static final FM_path:I = 0x2

.field private static final FM_photo_info:I = 0xc

.field private static final FM_rev:I = 0x5

.field private static final FM_size:I = 0x0

.field private static final FM_thumb_exists:I = 0x6

.field private static final FM_video_info:I = 0xd

.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public final iconName:Ljava/lang/String;

.field public final mightHaveThumbnail:Z

.field public final name:Ljava/lang/String;

.field public final path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    const-class v0, Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/dropbox/core/v1/DbxEntry;->$assertionsDisabled:Z

    .line 616
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$1;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry;->Reader:Lcom/dropbox/core/json/JsonReader;

    .line 625
    new-instance v0, Lcom/dropbox/core/v1/DbxEntry$2;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxEntry$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry;->ReaderMaybeDeleted:Lcom/dropbox/core/json/JsonReader;

    .line 990
    new-instance v0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;-><init>()V

    .line 991
    const-string/jumbo v3, "size"

    invoke-virtual {v0, v3, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 992
    const-string/jumbo v2, "bytes"

    invoke-virtual {v0, v2, v1}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 993
    const-string/jumbo v1, "path"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 994
    const-string/jumbo v1, "is_dir"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 995
    const-string/jumbo v1, "is_deleted"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 996
    const-string/jumbo v1, "rev"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 997
    const-string/jumbo v1, "thumb_exists"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 998
    const-string/jumbo v1, "icon"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 999
    const-string/jumbo v1, "modified"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1000
    const-string/jumbo v1, "client_mtime"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1001
    const-string/jumbo v1, "hash"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1002
    const-string/jumbo v1, "contents"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1003
    const-string/jumbo v1, "photo_info"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1004
    const-string/jumbo v1, "video_info"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->add(Ljava/lang/String;I)V

    .line 1005
    invoke-virtual {v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->build()Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v1/DbxEntry;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    .line 1006
    return-void

    :cond_0
    move v0, v2

    .line 26
    goto/16 :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/dropbox/core/v1/DbxPathV1;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v1/DbxEntry;->name:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxEntry;->iconName:Ljava/lang/String;

    .line 75
    iput-boolean p3, p0, Lcom/dropbox/core/v1/DbxEntry;->mightHaveThumbnail:Z

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v1/DbxEntry$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v1/DbxEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static _read(Lcom/d/a/a/k;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/d/a/a/k;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;Z)",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 849
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/d/a/a/k;)Lcom/d/a/a/i;

    move-result-object v20

    .line 851
    const/4 v10, 0x0

    .line 852
    const-wide/16 v8, -0x1

    .line 853
    const/4 v5, 0x0

    .line 854
    const/16 v19, 0x0

    .line 855
    const/16 v18, 0x0

    .line 856
    const/4 v13, 0x0

    .line 857
    const/4 v7, 0x0

    .line 858
    const/4 v6, 0x0

    .line 859
    const/4 v11, 0x0

    .line 860
    const/4 v12, 0x0

    .line 861
    const/16 v17, 0x0

    .line 862
    const/16 v16, 0x0

    .line 863
    const/4 v14, 0x0

    .line 864
    const/4 v15, 0x0

    .line 866
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v4

    sget-object v21, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    move-object/from16 v0, v21

    if-ne v4, v0, :cond_2

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v21

    .line 868
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/d/a/a/k;)Lcom/d/a/a/o;

    .line 870
    sget-object v4, Lcom/dropbox/core/v1/DbxEntry;->FM:Lcom/dropbox/core/json/JsonReader$FieldMapping;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/dropbox/core/json/JsonReader$FieldMapping;->get(Ljava/lang/String;)I

    move-result v4

    .line 872
    packed-switch v4, :pswitch_data_0

    .line 897
    :try_start_0
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bad index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", field = \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :catch_0
    move-exception v4

    .line 901
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object v4

    throw v4

    .line 873
    :pswitch_0
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/d/a/a/k;)V

    move-object/from16 v4, v16

    move-object/from16 v24, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v24

    :goto_1
    move-object/from16 v19, v9

    move-object/from16 v24, v5

    move-object v5, v10

    move-object/from16 v10, v18

    move-object/from16 v18, v8

    move-wide/from16 v8, v16

    move-object/from16 v17, v24

    move-object/from16 v16, v4

    .line 903
    goto :goto_0

    .line 874
    :pswitch_1
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v10}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v24, v18

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move-wide/from16 v16, v8

    move-object/from16 v9, v19

    move-object/from16 v8, v24

    goto :goto_1

    .line 875
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v8, v9}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLongField(Lcom/d/a/a/k;Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v4, v16

    move-object/from16 v24, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v24

    goto :goto_1

    .line 876
    :pswitch_3
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v5}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v5, v17

    move-object/from16 v24, v16

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v4

    move-object/from16 v4, v24

    goto :goto_1

    .line 877
    :pswitch_4
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    move-object/from16 v24, v16

    move-object/from16 v25, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object v9, v4

    move-object/from16 v4, v24

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v25

    goto :goto_1

    .line 878
    :pswitch_5
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v17

    move-object/from16 v24, v4

    move-object/from16 v4, v16

    move-wide/from16 v16, v8

    move-object/from16 v9, v19

    move-object/from16 v8, v24

    goto/16 :goto_1

    .line 879
    :pswitch_6
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v13}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v13, v4

    move-object/from16 v4, v16

    move-object/from16 v24, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v24

    goto/16 :goto_1

    .line 880
    :pswitch_7
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v7}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    move-object v7, v4

    move-object/from16 v4, v16

    move-object/from16 v24, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v24

    goto/16 :goto_1

    .line 881
    :pswitch_8
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v6}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v6, v4

    move-object/from16 v4, v16

    move-object/from16 v24, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v24

    goto/16 :goto_1

    .line 882
    :pswitch_9
    sget-object v4, Lcom/dropbox/core/json/JsonDateReader;->Dropbox:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v11}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    move-object v11, v4

    move-object/from16 v4, v16

    move-object/from16 v24, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v24

    goto/16 :goto_1

    .line 883
    :pswitch_a
    sget-object v4, Lcom/dropbox/core/json/JsonDateReader;->Dropbox:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v12}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    move-object v12, v4

    move-object/from16 v4, v16

    move-object/from16 v24, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v24

    goto/16 :goto_1

    .line 885
    :pswitch_b
    if-nez p1, :cond_0

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "not expecting \"hash\" field, since we didn\'t ask for children"

    invoke-virtual/range {p0 .. p0}, Lcom/d/a/a/k;->f()Lcom/d/a/a/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 886
    :cond_0
    sget-object v4, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v4, v0, v1, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v24, v16

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object v5, v4

    move-object/from16 v4, v24

    goto/16 :goto_1

    .line 888
    :pswitch_c
    if-nez p1, :cond_1

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "not expecting \"contents\" field, since we didn\'t ask for children"

    invoke-virtual/range {p0 .. p0}, Lcom/d/a/a/k;->f()Lcom/d/a/a/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 889
    :cond_1
    sget-object v4, Lcom/dropbox/core/v1/DbxEntry;->Reader:Lcom/dropbox/core/json/JsonReader;

    move-object/from16 v0, p1

    invoke-static {v4, v0}, Lcom/dropbox/core/json/JsonArrayReader;->mk(Lcom/dropbox/core/json/JsonReader;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/json/JsonArrayReader;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v4, v0, v1, v2}, Lcom/dropbox/core/json/JsonArrayReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v24, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v24

    goto/16 :goto_1

    .line 891
    :pswitch_d
    sget-object v4, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    sget-object v22, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->mk(Lcom/dropbox/core/json/JsonReader;Ljava/lang/Object;)Lcom/dropbox/core/v1/DbxEntry$PendingReader;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v14}, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;

    move-object v14, v4

    move-object/from16 v4, v16

    move-object/from16 v24, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v24

    .line 892
    goto/16 :goto_1

    .line 894
    :pswitch_e
    sget-object v4, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->Reader:Lcom/dropbox/core/json/JsonReader;

    sget-object v22, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;->PENDING:Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->mk(Lcom/dropbox/core/json/JsonReader;Ljava/lang/Object;)Lcom/dropbox/core/v1/DbxEntry$PendingReader;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1, v15}, Lcom/dropbox/core/v1/DbxEntry$PendingReader;->readField(Lcom/d/a/a/k;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;
    :try_end_1
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v4

    move-object/from16 v4, v16

    move-object/from16 v24, v17

    move-wide/from16 v16, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v18, v10

    move-object v10, v5

    move-object/from16 v5, v24

    .line 895
    goto/16 :goto_1

    .line 905
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/d/a/a/k;)V

    .line 907
    if-nez v5, :cond_3

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "missing field \"path\""

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 908
    :cond_3
    if-nez v6, :cond_4

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "missing field \"icon\""

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 909
    :cond_4
    if-nez v18, :cond_5

    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 910
    :cond_5
    if-nez v19, :cond_6

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 911
    :cond_6
    if-nez v7, :cond_7

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 913
    :cond_7
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    if-nez v16, :cond_8

    if-eqz v17, :cond_a

    .line 914
    :cond_8
    if-nez v17, :cond_9

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "missing \"hash\", when we asked for children"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 915
    :cond_9
    if-nez v16, :cond_a

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "missing \"contents\", when we asked for children"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 919
    :cond_a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 920
    new-instance v4, Lcom/dropbox/core/v1/DbxEntry$Folder;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/dropbox/core/v1/DbxEntry$Folder;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 932
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 933
    if-eqz p2, :cond_11

    .line 934
    const/4 v4, 0x0

    .line 939
    :goto_3
    return-object v4

    .line 924
    :cond_b
    if-nez v10, :cond_c

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "missing \"size\" for a file entry"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 925
    :cond_c
    const-wide/16 v22, -0x1

    cmp-long v4, v8, v22

    if-nez v4, :cond_d

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "missing \"bytes\" for a file entry"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 926
    :cond_d
    if-nez v11, :cond_e

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "missing \"modified\" for a file entry"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 927
    :cond_e
    if-nez v12, :cond_f

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "missing \"client_mtime\" for a file entry"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 928
    :cond_f
    if-nez v13, :cond_10

    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "missing \"rev\" for a file entry"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 929
    :cond_10
    new-instance v4, Lcom/dropbox/core/v1/DbxEntry$File;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct/range {v4 .. v15}, Lcom/dropbox/core/v1/DbxEntry$File;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/dropbox/core/v1/DbxEntry$File$PhotoInfo;Lcom/dropbox/core/v1/DbxEntry$File$VideoInfo;)V

    goto :goto_2

    .line 936
    :cond_11
    new-instance v4, Lcom/dropbox/core/json/JsonReadException;

    const-string/jumbo v5, "not expecting \"is_deleted\" entry here"

    move-object/from16 v0, v20

    invoke-direct {v4, v5, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/d/a/a/i;)V

    throw v4

    .line 939
    :cond_12
    new-instance v5, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v5, v4, v0, v1}, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;-><init>(Lcom/dropbox/core/v1/DbxEntry;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v5

    goto :goto_3

    .line 872
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/d/a/a/k;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/dropbox/core/v1/DbxEntry;->_read(Lcom/d/a/a/k;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    return-object v0
.end method

.method public static read(Lcom/d/a/a/k;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/d/a/a/k;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 837
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/v1/DbxEntry;->_read(Lcom/d/a/a/k;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    .line 838
    sget-boolean v1, Lcom/dropbox/core/v1/DbxEntry;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "@AssumeAssertion(nullness)"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 839
    :cond_0
    return-object v0
.end method

.method public static readMaybeDeleted(Lcom/d/a/a/k;Lcom/dropbox/core/util/Collector;)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/d/a/a/k;",
            "Lcom/dropbox/core/util/Collector",
            "<",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "+TC;>;)",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/dropbox/core/json/JsonReadException;
        }
    .end annotation

    .prologue
    .line 831
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/dropbox/core/v1/DbxEntry;->_read(Lcom/d/a/a/k;Lcom/dropbox/core/util/Collector;Z)Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asFile()Lcom/dropbox/core/v1/DbxEntry$File;
.end method

.method public abstract asFolder()Lcom/dropbox/core/v1/DbxEntry$Folder;
.end method

.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 81
    const-string/jumbo v0, "iconName"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->iconName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 82
    const-string/jumbo v0, "mightHaveThumbnail"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxEntry;->mightHaveThumbnail:Z

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Z)Lcom/dropbox/core/util/DumpWriter;

    .line 83
    return-void
.end method

.method public abstract isFile()Z
.end method

.method public abstract isFolder()Z
.end method

.method protected partialEquals(Lcom/dropbox/core/v1/DbxEntry;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->iconName:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry;->iconName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-boolean v1, p0, Lcom/dropbox/core/v1/DbxEntry;->mightHaveThumbnail:Z

    iget-boolean v2, p1, Lcom/dropbox/core/v1/DbxEntry;->mightHaveThumbnail:Z

    if-ne v1, v2, :cond_0

    .line 115
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected partialHashCode()I
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->iconName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 124
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/dropbox/core/v1/DbxEntry;->mightHaveThumbnail:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 125
    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
