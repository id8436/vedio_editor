.class Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UploadSessionFinishError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/UploadSessionFinishError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 351
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 392
    const/4 v1, 0x1

    .line 393
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 401
    :goto_0
    if-nez v0, :cond_1

    .line 402
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    const/4 v1, 0x0

    .line 398
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 399
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    :cond_1
    const-string/jumbo v2, "lookup_failed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 406
    const-string/jumbo v0, "lookup_failed"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 407
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v0

    .line 408
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->lookupFailed(Lcom/dropbox/core/v2/files/UploadSessionLookupError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    .line 425
    :goto_1
    if-nez v1, :cond_2

    .line 426
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 427
    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 429
    :cond_2
    return-object v0

    .line 410
    :cond_3
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 412
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 413
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    .line 414
    invoke-static {v0}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    goto :goto_1

    .line 416
    :cond_4
    const-string/jumbo v2, "too_many_shared_folder_targets"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 417
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->TOO_MANY_SHARED_FOLDER_TARGETS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    goto :goto_1

    .line 419
    :cond_5
    const-string/jumbo v2, "too_many_write_operations"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 420
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    goto :goto_1

    .line 423
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->OTHER:Lcom/dropbox/core/v2/files/UploadSessionFinishError;

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
    .line 350
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 355
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionFinishError$1;->$SwitchMap$com$dropbox$core$v2$files$UploadSessionFinishError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->tag()Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 381
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 357
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 358
    const-string/jumbo v0, "lookup_failed"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 359
    const-string/jumbo v0, "lookup_failed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->access$000(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/UploadSessionLookupError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/UploadSessionLookupError$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionLookupError;Lcom/d/a/a/g;)V

    .line 361
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 365
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 366
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 367
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 368
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishError;->access$100(Lcom/dropbox/core/v2/files/UploadSessionFinishError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/d/a/a/g;)V

    .line 369
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 373
    :pswitch_2
    const-string/jumbo v0, "too_many_shared_folder_targets"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :pswitch_3
    const-string/jumbo v0, "too_many_write_operations"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 355
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
    .line 350
    check-cast p1, Lcom/dropbox/core/v2/files/UploadSessionFinishError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishError$Serializer;->serialize(Lcom/dropbox/core/v2/files/UploadSessionFinishError;Lcom/d/a/a/g;)V

    return-void
.end method
