.class Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SaveUrlJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SaveUrlJobStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 315
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 317
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 325
    :goto_0
    if-nez v0, :cond_1

    .line 326
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    const/4 v1, 0x0

    .line 322
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 323
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 328
    :cond_1
    const-string/jumbo v3, "in_progress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    .line 345
    :goto_1
    if-nez v1, :cond_2

    .line 346
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 347
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 349
    :cond_2
    return-object v0

    .line 331
    :cond_3
    const-string/jumbo v3, "complete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 333
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v0

    .line 334
    invoke-static {v0}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->complete(Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    move-result-object v0

    goto :goto_1

    .line 336
    :cond_4
    const-string/jumbo v2, "failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 338
    const-string/jumbo v0, "failed"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 339
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->failed(Lcom/dropbox/core/v2/files/SaveUrlError;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    move-result-object v0

    goto :goto_1

    .line 343
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
    .line 279
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SaveUrlJobStatus;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 284
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$1;->$SwitchMap$com$dropbox$core$v2$files$SaveUrlJobStatus$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->tag()Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->tag()Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_0
    const-string/jumbo v0, "in_progress"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 290
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 291
    const-string/jumbo v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 292
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->access$000(Lcom/dropbox/core/v2/files/SaveUrlJobStatus;)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/d/a/a/g;Z)V

    .line 293
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 297
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 298
    const-string/jumbo v0, "failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 299
    const-string/jumbo v0, "failed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;->access$100(Lcom/dropbox/core/v2/files/SaveUrlJobStatus;)Lcom/dropbox/core/v2/files/SaveUrlError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->serialize(Lcom/dropbox/core/v2/files/SaveUrlError;Lcom/d/a/a/g;)V

    .line 301
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 284
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
    .line 279
    check-cast p1, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->serialize(Lcom/dropbox/core/v2/files/SaveUrlJobStatus;Lcom/d/a/a/g;)V

    return-void
.end method
