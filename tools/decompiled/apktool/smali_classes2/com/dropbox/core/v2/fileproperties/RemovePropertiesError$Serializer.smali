.class public Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RemovePropertiesError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 410
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 463
    const/4 v1, 0x1

    .line 464
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 472
    :goto_0
    if-nez v0, :cond_1

    .line 473
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    const/4 v1, 0x0

    .line 469
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 470
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_1
    const-string/jumbo v2, "template_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 477
    const-string/jumbo v0, "template_not_found"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 478
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 479
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v0

    .line 505
    :goto_1
    if-nez v1, :cond_2

    .line 506
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 507
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 509
    :cond_2
    return-object v0

    .line 481
    :cond_3
    const-string/jumbo v2, "restricted_content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 482
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    goto :goto_1

    .line 484
    :cond_4
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 485
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->OTHER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    goto :goto_1

    .line 487
    :cond_5
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 489
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 490
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v0

    .line 491
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v0

    goto :goto_1

    .line 493
    :cond_6
    const-string/jumbo v2, "unsupported_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 494
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    goto :goto_1

    .line 496
    :cond_7
    const-string/jumbo v2, "property_group_lookup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 498
    const-string/jumbo v0, "property_group_lookup"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 499
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object v0

    .line 500
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->propertyGroupLookup(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v0

    goto :goto_1

    .line 503
    :cond_8
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
    .line 409
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 414
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$RemovePropertiesError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->tag()Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->tag()Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 417
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 418
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->access$000(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 420
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 455
    :goto_0
    return-void

    .line 424
    :pswitch_1
    const-string/jumbo v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 433
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 434
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 435
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->access$100(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/d/a/a/g;)V

    .line 436
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 440
    :pswitch_4
    const-string/jumbo v0, "unsupported_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :pswitch_5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 445
    const-string/jumbo v0, "property_group_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 446
    const-string/jumbo v0, "property_group_lookup"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 447
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;->access$200(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;Lcom/d/a/a/g;)V

    .line 448
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 409
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;Lcom/d/a/a/g;)V

    return-void
.end method
