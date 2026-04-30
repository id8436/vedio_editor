.class Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadErrorWithProperties.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UploadErrorWithProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 326
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 328
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 336
    :goto_0
    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    const/4 v1, 0x0

    .line 333
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 334
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_1
    const-string/jumbo v3, "path"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 341
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object v0

    .line 342
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->path(Lcom/dropbox/core/v2/files/UploadWriteFailed;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v0

    .line 356
    :goto_1
    if-nez v1, :cond_2

    .line 357
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 358
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 360
    :cond_2
    return-object v0

    .line 344
    :cond_3
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 345
    sget-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->OTHER:Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    goto :goto_1

    .line 347
    :cond_4
    const-string/jumbo v2, "properties_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 349
    const-string/jumbo v0, "properties_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 350
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v0

    .line 351
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->propertiesError(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v0

    goto :goto_1

    .line 354
    :cond_5
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
    .line 290
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 295
    sget-object v0, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$1;->$SwitchMap$com$dropbox$core$v2$files$UploadErrorWithProperties$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->tag()Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->tag()Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 298
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 299
    sget-object v0, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->access$000(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)Lcom/dropbox/core/v2/files/UploadWriteFailed;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/UploadWriteFailed$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadWriteFailed;Lcom/d/a/a/g;Z)V

    .line 300
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 319
    :goto_0
    return-void

    .line 304
    :pswitch_1
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 309
    const-string/jumbo v0, "properties_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 310
    const-string/jumbo v0, "properties_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 311
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;->access$100(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;)Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;Lcom/d/a/a/g;)V

    .line 312
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 290
    check-cast p1, Lcom/dropbox/core/v2/files/UploadErrorWithProperties;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadErrorWithProperties$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadErrorWithProperties;Lcom/d/a/a/g;)V

    return-void
.end method
