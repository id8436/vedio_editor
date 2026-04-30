.class public Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UpdatePropertiesError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 454
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 515
    const/4 v1, 0x1

    .line 516
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 524
    :goto_0
    if-nez v0, :cond_1

    .line 525
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_0
    const/4 v1, 0x0

    .line 521
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 522
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_1
    const-string/jumbo v2, "template_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 529
    const-string/jumbo v0, "template_not_found"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 530
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 531
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    .line 563
    :goto_1
    if-nez v1, :cond_2

    .line 564
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 565
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 567
    :cond_2
    return-object v0

    .line 533
    :cond_3
    const-string/jumbo v2, "restricted_content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 534
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    goto :goto_1

    .line 536
    :cond_4
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 537
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->OTHER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    goto :goto_1

    .line 539
    :cond_5
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 541
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 542
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v0

    .line 543
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    goto :goto_1

    .line 545
    :cond_6
    const-string/jumbo v2, "unsupported_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 546
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    goto :goto_1

    .line 548
    :cond_7
    const-string/jumbo v2, "property_field_too_large"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 549
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    goto :goto_1

    .line 551
    :cond_8
    const-string/jumbo v2, "does_not_fit_template"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 552
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    goto :goto_1

    .line 554
    :cond_9
    const-string/jumbo v2, "property_group_lookup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 556
    const-string/jumbo v0, "property_group_lookup"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 557
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object v0

    .line 558
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->propertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    goto :goto_1

    .line 561
    :cond_a
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
    .line 453
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 458
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$UpdatePropertiesError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->tag()Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->tag()Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 461
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 462
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->access$000(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 464
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 507
    :goto_0
    return-void

    .line 468
    :pswitch_1
    const-string/jumbo v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 477
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 478
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 479
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->access$100(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/d/a/a/g;)V

    .line 480
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 484
    :pswitch_4
    const-string/jumbo v0, "unsupported_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :pswitch_5
    const-string/jumbo v0, "property_field_too_large"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :pswitch_6
    const-string/jumbo v0, "does_not_fit_template"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    :pswitch_7
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 497
    const-string/jumbo v0, "property_group_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 498
    const-string/jumbo v0, "property_group_lookup"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 499
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;->access$200(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;Lcom/d/a/a/g;)V

    .line 500
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 458
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
    .line 453
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;Lcom/d/a/a/g;)V

    return-void
.end method
