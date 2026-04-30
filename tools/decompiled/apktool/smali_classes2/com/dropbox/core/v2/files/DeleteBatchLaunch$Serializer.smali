.class Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "DeleteBatchLaunch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/DeleteBatchLaunch;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 319
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 350
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 352
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 360
    :goto_0
    if-nez v0, :cond_1

    .line 361
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    const/4 v1, 0x0

    .line 357
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 358
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 363
    :cond_1
    const-string/jumbo v3, "async_job_id"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 365
    const-string/jumbo v0, "async_job_id"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 366
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-static {v0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v0

    .line 377
    :goto_1
    if-nez v1, :cond_2

    .line 378
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 379
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 381
    :cond_2
    return-object v0

    .line 369
    :cond_3
    const-string/jumbo v3, "complete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 371
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/DeleteBatchResult;

    move-result-object v0

    .line 372
    invoke-static {v0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->complete(Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v0

    goto :goto_1

    .line 375
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

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
    .line 318
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 323
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteBatchLaunch$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->tag()Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 340
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 343
    :goto_0
    return-void

    .line 325
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 326
    const-string/jumbo v0, "async_job_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 327
    const-string/jumbo v0, "async_job_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->access$000(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 329
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 334
    const-string/jumbo v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 335
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->access$100(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;)Lcom/dropbox/core/v2/files/DeleteBatchResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteBatchResult;Lcom/d/a/a/g;Z)V

    .line 336
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 323
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
    .line 318
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;Lcom/d/a/a/g;)V

    return-void
.end method
