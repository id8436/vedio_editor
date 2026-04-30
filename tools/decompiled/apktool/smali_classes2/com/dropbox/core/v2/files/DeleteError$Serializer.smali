.class Lcom/dropbox/core/v2/files/DeleteError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "DeleteError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/DeleteError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 375
    const/4 v1, 0x1

    .line 376
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 384
    :goto_0
    if-nez v0, :cond_1

    .line 385
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_0
    const/4 v1, 0x0

    .line 381
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 382
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_1
    const-string/jumbo v2, "path_lookup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 389
    const-string/jumbo v0, "path_lookup"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 390
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    .line 391
    invoke-static {v0}, Lcom/dropbox/core/v2/files/DeleteError;->pathLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    .line 408
    :goto_1
    if-nez v1, :cond_2

    .line 409
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 410
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 412
    :cond_2
    return-object v0

    .line 393
    :cond_3
    const-string/jumbo v2, "path_write"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 395
    const-string/jumbo v0, "path_write"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 396
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    .line 397
    invoke-static {v0}, Lcom/dropbox/core/v2/files/DeleteError;->pathWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    goto :goto_1

    .line 399
    :cond_4
    const-string/jumbo v2, "too_many_write_operations"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 400
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/DeleteError;

    goto :goto_1

    .line 402
    :cond_5
    const-string/jumbo v2, "too_many_files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 403
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/DeleteError;

    goto :goto_1

    .line 406
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError;->OTHER:Lcom/dropbox/core/v2/files/DeleteError;

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
    .line 333
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/DeleteError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/DeleteError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 338
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteError$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/DeleteError;->tag()Lcom/dropbox/core/v2/files/DeleteError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/DeleteError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 364
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 367
    :goto_0
    return-void

    .line 340
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 341
    const-string/jumbo v0, "path_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 342
    const-string/jumbo v0, "path_lookup"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError;->access$000(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V

    .line 344
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 348
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 349
    const-string/jumbo v0, "path_write"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 350
    const-string/jumbo v0, "path_write"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 351
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteError;->access$100(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/d/a/a/g;)V

    .line 352
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 356
    :pswitch_2
    const-string/jumbo v0, "too_many_write_operations"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :pswitch_3
    const-string/jumbo v0, "too_many_files"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 338
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
    .line 333
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteError;Lcom/d/a/a/g;)V

    return-void
.end method
