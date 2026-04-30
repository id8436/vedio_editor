.class Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ThumbnailError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/ThumbnailError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ThumbnailError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 292
    const/4 v1, 0x1

    .line 293
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 301
    :goto_0
    if-nez v0, :cond_1

    .line 302
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    const/4 v1, 0x0

    .line 298
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 299
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_1
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 306
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 307
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    .line 308
    invoke-static {v0}, Lcom/dropbox/core/v2/files/ThumbnailError;->path(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/ThumbnailError;

    move-result-object v0

    .line 322
    :goto_1
    if-nez v1, :cond_2

    .line 323
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 324
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 326
    :cond_2
    return-object v0

    .line 310
    :cond_3
    const-string/jumbo v2, "unsupported_extension"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 311
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailError;->UNSUPPORTED_EXTENSION:Lcom/dropbox/core/v2/files/ThumbnailError;

    goto :goto_1

    .line 313
    :cond_4
    const-string/jumbo v2, "unsupported_image"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 314
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailError;->UNSUPPORTED_IMAGE:Lcom/dropbox/core/v2/files/ThumbnailError;

    goto :goto_1

    .line 316
    :cond_5
    const-string/jumbo v2, "conversion_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 317
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailError;->CONVERSION_ERROR:Lcom/dropbox/core/v2/files/ThumbnailError;

    goto :goto_1

    .line 320
    :cond_6
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
    .line 254
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ThumbnailError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/ThumbnailError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailError$1;->$SwitchMap$com$dropbox$core$v2$files$ThumbnailError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ThumbnailError;->tag()Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/ThumbnailError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ThumbnailError;->tag()Lcom/dropbox/core/v2/files/ThumbnailError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 262
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 263
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailError;->access$000(Lcom/dropbox/core/v2/files/ThumbnailError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V

    .line 265
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 284
    :goto_0
    return-void

    .line 269
    :pswitch_1
    const-string/jumbo v0, "unsupported_extension"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :pswitch_2
    const-string/jumbo v0, "unsupported_image"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :pswitch_3
    const-string/jumbo v0, "conversion_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 254
    check-cast p1, Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->serialize(Lcom/dropbox/core/v2/files/ThumbnailError;Lcom/d/a/a/g;)V

    return-void
.end method
