.class Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadSessionLookupError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UploadSessionLookupError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 310
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 345
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 347
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 355
    :goto_0
    if-nez v0, :cond_1

    .line 356
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    const/4 v1, 0x0

    .line 352
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 353
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 358
    :cond_1
    const-string/jumbo v3, "not_found"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 359
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->NOT_FOUND:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    .line 375
    :goto_1
    if-nez v1, :cond_2

    .line 376
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 377
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 379
    :cond_2
    return-object v0

    .line 361
    :cond_3
    const-string/jumbo v3, "incorrect_offset"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 363
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->incorrectOffset(Lcom/dropbox/core/v2/files/UploadSessionOffsetError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v0

    goto :goto_1

    .line 366
    :cond_4
    const-string/jumbo v2, "closed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 367
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    goto :goto_1

    .line 369
    :cond_5
    const-string/jumbo v2, "not_closed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 370
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->NOT_CLOSED:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    goto :goto_1

    .line 373
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionLookupError;

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
    .line 309
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 314
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionLookupError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->tag()Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 335
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 316
    :pswitch_0
    const-string/jumbo v0, "not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 321
    const-string/jumbo v0, "incorrect_offset"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 322
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError;->access$000(Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionOffsetError;Lcom/d/a/a/g;Z)V

    .line 323
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 327
    :pswitch_2
    const-string/jumbo v0, "closed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :pswitch_3
    const-string/jumbo v0, "not_closed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 314
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
    .line 309
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/d/a/a/g;)V

    return-void
.end method
