.class Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadSessionFinishBatchJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 247
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 249
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 257
    :goto_0
    if-nez v0, :cond_1

    .line 258
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    const/4 v1, 0x0

    .line 254
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 255
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_1
    const-string/jumbo v3, "in_progress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    .line 271
    :goto_1
    if-nez v1, :cond_2

    .line 272
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 273
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 275
    :cond_2
    return-object v0

    .line 263
    :cond_3
    const-string/jumbo v3, "complete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    move-result-object v0

    .line 266
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->complete(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object v0

    goto :goto_1

    .line 269
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
    .line 219
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 224
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionFinishBatchJobStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :pswitch_0
    const-string/jumbo v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 240
    :goto_0
    return-void

    .line 230
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 231
    const-string/jumbo v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 232
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;->access$000(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResult;Lcom/d/a/a/g;Z)V

    .line 233
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 224
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
    .line 219
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;Lcom/d/a/a/g;)V

    return-void
.end method
