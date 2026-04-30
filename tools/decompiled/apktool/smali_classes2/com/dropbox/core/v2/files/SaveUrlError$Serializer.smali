.class Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SaveUrlError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SaveUrlError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/SaveUrlError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 323
    const/4 v1, 0x1

    .line 324
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 332
    :goto_0
    if-nez v0, :cond_1

    .line 333
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    const/4 v1, 0x0

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 330
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 335
    :cond_1
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 338
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    .line 339
    invoke-static {v0}, Lcom/dropbox/core/v2/files/SaveUrlError;->path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v0

    .line 353
    :goto_1
    if-nez v1, :cond_2

    .line 354
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 355
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 357
    :cond_2
    return-object v0

    .line 341
    :cond_3
    const-string/jumbo v2, "download_failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 342
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->DOWNLOAD_FAILED:Lcom/dropbox/core/v2/files/SaveUrlError;

    goto :goto_1

    .line 344
    :cond_4
    const-string/jumbo v2, "invalid_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 345
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->INVALID_URL:Lcom/dropbox/core/v2/files/SaveUrlError;

    goto :goto_1

    .line 347
    :cond_5
    const-string/jumbo v2, "not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 348
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveUrlError;

    goto :goto_1

    .line 351
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError;->OTHER:Lcom/dropbox/core/v2/files/SaveUrlError;

    goto :goto_1
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
    .line 285
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SaveUrlError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$1;->$SwitchMap$com$dropbox$core$v2$files$SaveUrlError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveUrlError;->tag()Lcom/dropbox/core/v2/files/SaveUrlError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/SaveUrlError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 312
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 292
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 293
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 294
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlError;->access$000(Lcom/dropbox/core/v2/files/SaveUrlError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/d/a/a/g;)V

    .line 296
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 300
    :pswitch_1
    const-string/jumbo v0, "download_failed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :pswitch_2
    const-string/jumbo v0, "invalid_url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :pswitch_3
    const-string/jumbo v0, "not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    nop

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
    .line 285
    check-cast p1, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->serialize(Lcom/dropbox/core/v2/files/SaveUrlError;Lcom/d/a/a/g;)V

    return-void
.end method
