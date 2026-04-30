.class Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RelocationBatchJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;

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
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 321
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 323
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 331
    :goto_0
    if-nez v0, :cond_1

    .line 332
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    const/4 v1, 0x0

    .line 328
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 334
    :cond_1
    const-string/jumbo v3, "in_progress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 335
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    .line 351
    :goto_1
    if-nez v1, :cond_2

    .line 352
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 353
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 355
    :cond_2
    return-object v0

    .line 337
    :cond_3
    const-string/jumbo v3, "complete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 339
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/RelocationBatchResult;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->complete(Lcom/dropbox/core/v2/files/RelocationBatchResult;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object v0

    goto :goto_1

    .line 342
    :cond_4
    const-string/jumbo v2, "failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 344
    const-string/jumbo v0, "failed"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 345
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v0

    .line 346
    invoke-static {v0}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->failed(Lcom/dropbox/core/v2/files/RelocationBatchError;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object v0

    goto :goto_1

    .line 349
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
    .line 285
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$RelocationBatchJobStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->tag()Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->tag()Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :pswitch_0
    const-string/jumbo v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 314
    :goto_0
    return-void

    .line 296
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 297
    const-string/jumbo v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 298
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->access$000(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;)Lcom/dropbox/core/v2/files/RelocationBatchResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/RelocationBatchResult$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationBatchResult;Lcom/d/a/a/g;Z)V

    .line 299
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 303
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 304
    const-string/jumbo v0, "failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 305
    const-string/jumbo v0, "failed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 306
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;->access$100(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;)Lcom/dropbox/core/v2/files/RelocationBatchError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationBatchError;Lcom/d/a/a/g;)V

    .line 307
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 290
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
    .line 285
    check-cast p1, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->serialize(Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;Lcom/d/a/a/g;)V

    return-void
.end method
