.class Lcom/dropbox/core/v2/files/RelocationError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RelocationError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/RelocationError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 489
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/RelocationError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 554
    const/4 v1, 0x1

    .line 555
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 563
    :goto_0
    if-nez v0, :cond_1

    .line 564
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    const/4 v1, 0x0

    .line 560
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 561
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_1
    const-string/jumbo v2, "from_lookup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 568
    const-string/jumbo v0, "from_lookup"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 569
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    .line 570
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RelocationError;->fromLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    .line 605
    :goto_1
    if-nez v1, :cond_2

    .line 606
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 607
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 609
    :cond_2
    return-object v0

    .line 572
    :cond_3
    const-string/jumbo v2, "from_write"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 574
    const-string/jumbo v0, "from_write"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 575
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    .line 576
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RelocationError;->fromWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    goto :goto_1

    .line 578
    :cond_4
    const-string/jumbo v2, "to"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 580
    const-string/jumbo v0, "to"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 581
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    .line 582
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RelocationError;->to(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    goto :goto_1

    .line 584
    :cond_5
    const-string/jumbo v2, "cant_copy_shared_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 585
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    .line 587
    :cond_6
    const-string/jumbo v2, "cant_nest_shared_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 588
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    .line 590
    :cond_7
    const-string/jumbo v2, "cant_move_folder_into_itself"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 591
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    .line 593
    :cond_8
    const-string/jumbo v2, "too_many_files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 594
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    .line 596
    :cond_9
    const-string/jumbo v2, "duplicated_or_nested_paths"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 597
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError;

    goto :goto_1

    .line 599
    :cond_a
    const-string/jumbo v2, "cant_transfer_ownership"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 600
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError;

    goto/16 :goto_1

    .line 603
    :cond_b
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError;->OTHER:Lcom/dropbox/core/v2/files/RelocationError;

    goto/16 :goto_1
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
    .line 488
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/RelocationError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/RelocationError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 493
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RelocationError;->tag()Lcom/dropbox/core/v2/files/RelocationError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RelocationError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 543
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 546
    :goto_0
    return-void

    .line 495
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 496
    const-string/jumbo v0, "from_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 497
    const-string/jumbo v0, "from_lookup"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 498
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError;->access$000(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V

    .line 499
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 503
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 504
    const-string/jumbo v0, "from_write"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 505
    const-string/jumbo v0, "from_write"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 506
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError;->access$100(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/d/a/a/g;)V

    .line 507
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 511
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 512
    const-string/jumbo v0, "to"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 513
    const-string/jumbo v0, "to"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 514
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationError;->access$200(Lcom/dropbox/core/v2/files/RelocationError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/d/a/a/g;)V

    .line 515
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 519
    :pswitch_3
    const-string/jumbo v0, "cant_copy_shared_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :pswitch_4
    const-string/jumbo v0, "cant_nest_shared_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 527
    :pswitch_5
    const-string/jumbo v0, "cant_move_folder_into_itself"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 531
    :pswitch_6
    const-string/jumbo v0, "too_many_files"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :pswitch_7
    const-string/jumbo v0, "duplicated_or_nested_paths"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :pswitch_8
    const-string/jumbo v0, "cant_transfer_ownership"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 493
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
    .line 488
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationError;Lcom/d/a/a/g;)V

    return-void
.end method
