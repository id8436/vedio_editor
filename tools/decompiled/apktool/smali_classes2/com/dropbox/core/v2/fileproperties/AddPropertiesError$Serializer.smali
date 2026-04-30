.class public Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AddPropertiesError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 466
    const/4 v1, 0x1

    .line 467
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 475
    :goto_0
    if-nez v0, :cond_1

    .line 476
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    const/4 v1, 0x0

    .line 472
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 473
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 478
    :cond_1
    const-string/jumbo v2, "template_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 480
    const-string/jumbo v0, "template_not_found"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 481
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 482
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    .line 511
    :goto_1
    if-nez v1, :cond_2

    .line 512
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 513
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 515
    :cond_2
    return-object v0

    .line 484
    :cond_3
    const-string/jumbo v2, "restricted_content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 485
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    .line 487
    :cond_4
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 488
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->OTHER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    .line 490
    :cond_5
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 492
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 493
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v0

    .line 494
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    goto :goto_1

    .line 496
    :cond_6
    const-string/jumbo v2, "unsupported_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 497
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    .line 499
    :cond_7
    const-string/jumbo v2, "property_field_too_large"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 500
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    .line 502
    :cond_8
    const-string/jumbo v2, "does_not_fit_template"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 503
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    .line 505
    :cond_9
    const-string/jumbo v2, "property_group_already_exists"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 506
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->PROPERTY_GROUP_ALREADY_EXISTS:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    goto :goto_1

    .line 509
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
    .line 408
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 413
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$AddPropertiesError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->tag()Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 455
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->tag()Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 416
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 417
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->access$000(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 419
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 458
    :goto_0
    return-void

    .line 423
    :pswitch_1
    const-string/jumbo v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 432
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 433
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 434
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;->access$100(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/d/a/a/g;)V

    .line 435
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 439
    :pswitch_4
    const-string/jumbo v0, "unsupported_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 443
    :pswitch_5
    const-string/jumbo v0, "property_field_too_large"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :pswitch_6
    const-string/jumbo v0, "does_not_fit_template"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :pswitch_7
    const-string/jumbo v0, "property_group_already_exists"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    nop

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
    .line 408
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;Lcom/d/a/a/g;)V

    return-void
.end method
