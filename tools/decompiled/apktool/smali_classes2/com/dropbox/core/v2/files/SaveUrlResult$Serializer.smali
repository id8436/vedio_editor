.class Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SaveUrlResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SaveUrlResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 306
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 308
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 316
    :goto_0
    if-nez v0, :cond_1

    .line 317
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    const/4 v1, 0x0

    .line 313
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 314
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_1
    const-string/jumbo v3, "async_job_id"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    const-string/jumbo v0, "async_job_id"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 322
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    invoke-static {v0}, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlResult;

    move-result-object v0

    .line 333
    :goto_1
    if-nez v1, :cond_2

    .line 334
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 335
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 337
    :cond_2
    return-object v0

    .line 325
    :cond_3
    const-string/jumbo v3, "complete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 327
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lcom/dropbox/core/v2/files/SaveUrlResult;->complete(Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/SaveUrlResult;

    move-result-object v0

    goto :goto_1

    .line 331
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
    .line 274
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/SaveUrlResult;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SaveUrlResult;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 279
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlResult$1;->$SwitchMap$com$dropbox$core$v2$files$SaveUrlResult$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveUrlResult;->tag()Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveUrlResult;->tag()Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 282
    const-string/jumbo v0, "async_job_id"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 283
    const-string/jumbo v0, "async_job_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 284
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlResult;->access$000(Lcom/dropbox/core/v2/files/SaveUrlResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 285
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 299
    :goto_0
    return-void

    .line 289
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 290
    const-string/jumbo v0, "complete"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 291
    sget-object v0, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveUrlResult;->access$100(Lcom/dropbox/core/v2/files/SaveUrlResult;)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->serialize(Lcom/dropbox/core/v2/files/FileMetadata;Lcom/d/a/a/g;Z)V

    .line 292
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 279
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
    .line 274
    check-cast p1, Lcom/dropbox/core/v2/files/SaveUrlResult;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->serialize(Lcom/dropbox/core/v2/files/SaveUrlResult;Lcom/d/a/a/g;)V

    return-void
.end method
