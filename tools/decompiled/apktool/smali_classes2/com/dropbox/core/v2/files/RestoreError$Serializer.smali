.class Lcom/dropbox/core/v2/files/RestoreError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RestoreError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/RestoreError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/RestoreError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 322
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RestoreError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/RestoreError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 359
    const/4 v1, 0x1

    .line 360
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 368
    :goto_0
    if-nez v0, :cond_1

    .line 369
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    const/4 v1, 0x0

    .line 365
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 366
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_1
    const-string/jumbo v2, "path_lookup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 373
    const-string/jumbo v0, "path_lookup"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 374
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v0

    .line 375
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RestoreError;->pathLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v0

    .line 389
    :goto_1
    if-nez v1, :cond_2

    .line 390
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 391
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 393
    :cond_2
    return-object v0

    .line 377
    :cond_3
    const-string/jumbo v2, "path_write"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    const-string/jumbo v0, "path_write"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 380
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RestoreError;->pathWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v0

    goto :goto_1

    .line 383
    :cond_4
    const-string/jumbo v2, "invalid_revision"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 384
    sget-object v0, Lcom/dropbox/core/v2/files/RestoreError;->INVALID_REVISION:Lcom/dropbox/core/v2/files/RestoreError;

    goto :goto_1

    .line 387
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/files/RestoreError;->OTHER:Lcom/dropbox/core/v2/files/RestoreError;

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
    .line 321
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/RestoreError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 326
    sget-object v0, Lcom/dropbox/core/v2/files/RestoreError$1;->$SwitchMap$com$dropbox$core$v2$files$RestoreError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RestoreError;->tag()Lcom/dropbox/core/v2/files/RestoreError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RestoreError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 348
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 328
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 329
    const-string/jumbo v0, "path_lookup"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 330
    const-string/jumbo v0, "path_lookup"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 331
    sget-object v0, Lcom/dropbox/core/v2/files/LookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/LookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError;->access$000(Lcom/dropbox/core/v2/files/RestoreError;)Lcom/dropbox/core/v2/files/LookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/LookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/LookupError;Lcom/d/a/a/g;)V

    .line 332
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 336
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 337
    const-string/jumbo v0, "path_write"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 338
    const-string/jumbo v0, "path_write"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RestoreError;->access$100(Lcom/dropbox/core/v2/files/RestoreError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/d/a/a/g;)V

    .line 340
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 344
    :pswitch_2
    const-string/jumbo v0, "invalid_revision"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 326
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
    .line 321
    check-cast p1, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->serialize(Lcom/dropbox/core/v2/files/RestoreError;Lcom/d/a/a/g;)V

    return-void
.end method
