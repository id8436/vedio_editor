.class Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadSessionFinishBatchResultEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 282
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 284
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 292
    :goto_0
    if-nez v0, :cond_1

    .line 293
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    const/4 v1, 0x0

    .line 289
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 290
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 295
    :cond_1
    const-string/jumbo v3, "success"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 297
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->success(Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    move-result-object v0

    .line 309
    :goto_1
    if-nez v1, :cond_2

    .line 310
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 311
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 313
    :cond_2
    return-object v0

    .line 300
    :cond_3
    const-string/jumbo v2, "failure"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 302
    const-string/jumbo v0, "failure"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 303
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    .line 304
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->failure(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    move-result-object v0

    goto :goto_1

    .line 307
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
    .line 250
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 255
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionFinishBatchResultEntry$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 258
    const-string/jumbo v0, "success"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 259
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->access$000(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/d/a/a/g;Z)V

    .line 260
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 275
    :goto_0
    return-void

    .line 264
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 265
    const-string/jumbo v0, "failure"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 266
    const-string/jumbo v0, "failure"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;->access$100(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishError;Lcom/d/a/a/g;)V

    .line 268
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 255
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
    .line 250
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchResultEntry;Lcom/d/a/a/g;)V

    return-void
.end method
