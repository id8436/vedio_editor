.class Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SaveCopyReferenceError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/SaveCopyReferenceError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 352
    const/4 v1, 0x1

    .line 353
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

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
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 359
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_1
    const-string/jumbo v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 366
    const-string/jumbo v0, "path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 367
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    .line 368
    invoke-static {v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->path(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    move-result-object v0

    .line 385
    :goto_1
    if-nez v1, :cond_2

    .line 386
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 387
    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 389
    :cond_2
    return-object v0

    .line 370
    :cond_3
    const-string/jumbo v2, "invalid_copy_reference"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 371
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->INVALID_COPY_REFERENCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    goto :goto_1

    .line 373
    :cond_4
    const-string/jumbo v2, "no_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 374
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->NO_PERMISSION:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    goto :goto_1

    .line 376
    :cond_5
    const-string/jumbo v2, "not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 377
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->NOT_FOUND:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    goto :goto_1

    .line 379
    :cond_6
    const-string/jumbo v2, "too_many_files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 380
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    goto :goto_1

    .line 383
    :cond_7
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->OTHER:Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

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
    .line 310
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/SaveCopyReferenceError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 315
    sget-object v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$1;->$SwitchMap$com$dropbox$core$v2$files$SaveCopyReferenceError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->tag()Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 341
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 317
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 318
    const-string/jumbo v0, "path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 319
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;->access$000(Lcom/dropbox/core/v2/files/SaveCopyReferenceError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/d/a/a/g;)V

    .line 321
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 325
    :pswitch_1
    const-string/jumbo v0, "invalid_copy_reference"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :pswitch_2
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :pswitch_3
    const-string/jumbo v0, "not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :pswitch_4
    const-string/jumbo v0, "too_many_files"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 310
    check-cast p1, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->serialize(Lcom/dropbox/core/v2/files/SaveCopyReferenceError;Lcom/d/a/a/g;)V

    return-void
.end method
