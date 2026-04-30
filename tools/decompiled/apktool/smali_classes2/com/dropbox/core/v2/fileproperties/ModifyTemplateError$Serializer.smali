.class public Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ModifyTemplateError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 391
    const/4 v1, 0x1

    .line 392
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 400
    :goto_0
    if-nez v0, :cond_1

    .line 401
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    const/4 v1, 0x0

    .line 397
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 398
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_1
    const-string/jumbo v2, "template_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 405
    const-string/jumbo v0, "template_not_found"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 406
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    invoke-static {v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->templateNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    .line 430
    :goto_1
    if-nez v1, :cond_2

    .line 431
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 432
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 434
    :cond_2
    return-object v0

    .line 409
    :cond_3
    const-string/jumbo v2, "restricted_content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 410
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->RESTRICTED_CONTENT:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    goto :goto_1

    .line 412
    :cond_4
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 413
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->OTHER:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    goto :goto_1

    .line 415
    :cond_5
    const-string/jumbo v2, "conflicting_property_names"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 416
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->CONFLICTING_PROPERTY_NAMES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    goto :goto_1

    .line 418
    :cond_6
    const-string/jumbo v2, "too_many_properties"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 419
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->TOO_MANY_PROPERTIES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    goto :goto_1

    .line 421
    :cond_7
    const-string/jumbo v2, "too_many_templates"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 422
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->TOO_MANY_TEMPLATES:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    goto :goto_1

    .line 424
    :cond_8
    const-string/jumbo v2, "template_attribute_too_large"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 425
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->TEMPLATE_ATTRIBUTE_TOO_LARGE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    goto :goto_1

    .line 428
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
    .line 341
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 346
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$1;->$SwitchMap$com$dropbox$core$v2$fileproperties$ModifyTemplateError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->tag()Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->tag()Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 349
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 350
    const-string/jumbo v0, "template_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;->access$000(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 352
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 383
    :goto_0
    return-void

    .line 356
    :pswitch_1
    const-string/jumbo v0, "restricted_content"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :pswitch_3
    const-string/jumbo v0, "conflicting_property_names"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :pswitch_4
    const-string/jumbo v0, "too_many_properties"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :pswitch_5
    const-string/jumbo v0, "too_many_templates"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :pswitch_6
    const-string/jumbo v0, "template_attribute_too_large"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 346
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
    .line 341
    check-cast p1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;Lcom/d/a/a/g;)V

    return-void
.end method
