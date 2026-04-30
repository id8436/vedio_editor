.class Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RelocationBatchLaunch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/RelocationBatchLaunch;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 351
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 353
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 361
    :goto_0
    if-nez v0, :cond_1

    .line 362
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 357
    :cond_0
    const/4 v1, 0x0

    .line 358
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 359
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_1
    const-string/jumbo v3, "async_job_id"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    const-string/jumbo v0, "async_job_id"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 367
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v0

    .line 378
    :goto_1
    if-nez v1, :cond_2

    .line 379
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 380
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 382
    :cond_2
    return-object v0

    .line 370
    :cond_3
    const-string/jumbo v3, "complete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 372
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/RelocationBatchResult;

    move-result-object v0

    .line 373
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->complete(Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v0

    goto :goto_1

    .line 376
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

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
    .line 319
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 324
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationBatchLaunch$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->tag()Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 341
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 326
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 327
    const-string/jumbo v0, "async_job_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 328
    const-string/jumbo v0, "async_job_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->access$000(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 330
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 334
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 335
    const-string/jumbo v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 336
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;->access$100(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;)Lcom/dropbox/core/v2/files/RelocationBatchResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationBatchResult;Lcom/d/a/a/g;Z)V

    .line 337
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 324
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
    .line 319
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationBatchLaunch;Lcom/d/a/a/g;)V

    return-void
.end method
