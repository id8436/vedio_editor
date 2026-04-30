.class Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "DeleteBatchJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 358
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 360
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

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
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 366
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_1
    const-string/jumbo v3, "in_progress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 372
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    .line 388
    :goto_1
    if-nez v1, :cond_2

    .line 389
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 390
    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 392
    :cond_2
    return-object v0

    .line 374
    :cond_3
    const-string/jumbo v3, "complete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 376
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/DeleteBatchResult;

    move-result-object v0

    .line 377
    invoke-static {v0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->complete(Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    move-result-object v0

    goto :goto_1

    .line 379
    :cond_4
    const-string/jumbo v2, "failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 381
    const-string/jumbo v0, "failed"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 382
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/DeleteBatchError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/DeleteBatchError;

    move-result-object v0

    .line 383
    invoke-static {v0}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->failed(Lcom/dropbox/core/v2/files/DeleteBatchError;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    move-result-object v0

    goto :goto_1

    .line 386
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

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
    .line 322
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 327
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteBatchJobStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->tag()Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 348
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 329
    :pswitch_0
    const-string/jumbo v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 334
    const-string/jumbo v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 335
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->access$000(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;)Lcom/dropbox/core/v2/files/DeleteBatchResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/DeleteBatchResult$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteBatchResult;Lcom/d/a/a/g;Z)V

    .line 336
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 340
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 341
    const-string/jumbo v0, "failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 342
    const-string/jumbo v0, "failed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;->access$100(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;)Lcom/dropbox/core/v2/files/DeleteBatchError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/DeleteBatchError$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteBatchError;Lcom/d/a/a/g;)V

    .line 344
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 327
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
    .line 322
    check-cast p1, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->serialize(Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;Lcom/d/a/a/g;)V

    return-void
.end method
