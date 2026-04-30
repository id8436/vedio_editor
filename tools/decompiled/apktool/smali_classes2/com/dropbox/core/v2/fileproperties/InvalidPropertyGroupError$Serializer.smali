.class public Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "InvalidPropertyGroupError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 440
    const/4 v1, 0x1

    .line 441
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 449
    :goto_0
    if-nez v0, :cond_1

    .line 450
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    const/4 v1, 0x0

    .line 446
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 447
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 452
    :cond_1
    const-string/jumbo v2, "template_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 454
    const-string/jumbo v0, "template_not_found"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 455
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 456
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    .line 482
    :goto_1
    if-nez v1, :cond_2

    .line 483
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 484
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 486
    :cond_2
    return-object v0

    .line 458
    :cond_3
    const-string/jumbo v2, "restricted_content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 459
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    goto :goto_1

    .line 461
    :cond_4
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 462
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->OTHER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    goto :goto_1

    .line 464
    :cond_5
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 466
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 467
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v0

    .line 468
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->path(Lcom/dropbox/core/v2/fileproperties/LookupError;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    goto :goto_1

    .line 470
    :cond_6
    const-string/jumbo v2, "unsupported_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 471
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->UNSUPPORTED_FOLDER:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    goto :goto_1

    .line 473
    :cond_7
    const-string/jumbo v2, "property_field_too_large"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 474
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->PROPERTY_FIELD_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    goto :goto_1

    .line 476
    :cond_8
    const-string/jumbo v2, "does_not_fit_template"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 477
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->DOES_NOT_FIT_TEMPLATE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    goto :goto_1

    .line 480
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
    .line 386
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 391
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$InvalidPropertyGroupError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->tag()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 429
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->tag()Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 394
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 395
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->access$000(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 397
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 432
    :goto_0
    return-void

    .line 401
    :pswitch_1
    const-string/jumbo v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 410
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 411
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 412
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;->access$100(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/fileproperties/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookupError;Lcom/d/a/a/g;)V

    .line 413
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 417
    :pswitch_4
    const-string/jumbo v0, "unsupported_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :pswitch_5
    const-string/jumbo v0, "property_field_too_large"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :pswitch_6
    const-string/jumbo v0, "does_not_fit_template"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 391
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
    .line 386
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;Lcom/d/a/a/g;)V

    return-void
.end method
