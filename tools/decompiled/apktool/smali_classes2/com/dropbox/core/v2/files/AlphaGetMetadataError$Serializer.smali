.class Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AlphaGetMetadataError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/AlphaGetMetadataError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 287
    const/4 v1, 0x1

    .line 288
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 296
    :goto_0
    if-nez v0, :cond_1

    .line 297
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    const/4 v1, 0x0

    .line 293
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 294
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_1
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 302
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    move-result-object v0

    .line 314
    :goto_1
    if-nez v1, :cond_2

    .line 315
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 316
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 318
    :cond_2
    return-object v0

    .line 305
    :cond_3
    const-string/jumbo v2, "properties_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 307
    const-string/jumbo v0, "properties_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 308
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object v0

    .line 309
    invoke-static {v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->propertiesError(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    move-result-object v0

    goto :goto_1

    .line 312
    :cond_4
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
    .line 253
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$1;->$SwitchMap$com$dropbox$core$v2$files$AlphaGetMetadataError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->tag()Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->tag()Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 261
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 262
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->access$000(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V

    .line 264
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 279
    :goto_0
    return-void

    .line 268
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 269
    const-string/jumbo v0, "properties_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 270
    const-string/jumbo v0, "properties_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 271
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;->access$100(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError$Serializer;->serialize(Lcom/dropbox/core/v2/fileproperties/LookUpPropertiesError;Lcom/d/a/a/g;)V

    .line 272
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .line 253
    check-cast p1, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->serialize(Lcom/dropbox/core/v2/files/AlphaGetMetadataError;Lcom/d/a/a/g;)V

    return-void
.end method
