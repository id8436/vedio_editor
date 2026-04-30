.class Lcom/dropbox/core/v2/files/WriteError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "WriteError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/WriteError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    new-instance v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/WriteError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/WriteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 435
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 436
    const/4 v1, 0x1

    .line 437
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 445
    :goto_0
    if-nez v0, :cond_1

    .line 446
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    const/4 v1, 0x0

    .line 442
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 443
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_1
    const-string/jumbo v2, "malformed_path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 449
    const/4 v0, 0x0

    .line 450
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v2

    sget-object v3, Lcom/d/a/a/o;->c:Lcom/d/a/a/o;

    if-eq v2, v3, :cond_2

    .line 451
    const-string/jumbo v0, "malformed_path"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 452
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    :cond_2
    if-nez v0, :cond_4

    .line 455
    invoke-static {}, Lcom/dropbox/core/v2/files/WriteError;->malformedPath()Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    .line 482
    :goto_1
    if-nez v1, :cond_3

    .line 483
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 484
    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 486
    :cond_3
    return-object v0

    .line 458
    :cond_4
    invoke-static {v0}, Lcom/dropbox/core/v2/files/WriteError;->malformedPath(Ljava/lang/String;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    goto :goto_1

    .line 461
    :cond_5
    const-string/jumbo v2, "conflict"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 463
    const-string/jumbo v0, "conflict"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 464
    sget-object v0, Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteConflictError;

    move-result-object v0

    .line 465
    invoke-static {v0}, Lcom/dropbox/core/v2/files/WriteError;->conflict(Lcom/dropbox/core/v2/files/WriteConflictError;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    goto :goto_1

    .line 467
    :cond_6
    const-string/jumbo v2, "no_write_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 468
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError;->NO_WRITE_PERMISSION:Lcom/dropbox/core/v2/files/WriteError;

    goto :goto_1

    .line 470
    :cond_7
    const-string/jumbo v2, "insufficient_space"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 471
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError;->INSUFFICIENT_SPACE:Lcom/dropbox/core/v2/files/WriteError;

    goto :goto_1

    .line 473
    :cond_8
    const-string/jumbo v2, "disallowed_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 474
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError;->DISALLOWED_NAME:Lcom/dropbox/core/v2/files/WriteError;

    goto :goto_1

    .line 476
    :cond_9
    const-string/jumbo v2, "team_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 477
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError;->TEAM_FOLDER:Lcom/dropbox/core/v2/files/WriteError;

    goto :goto_1

    .line 480
    :cond_a
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError;->OTHER:Lcom/dropbox/core/v2/files/WriteError;

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
    .line 386
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/WriteError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 391
    sget-object v0, Lcom/dropbox/core/v2/files/WriteError$1;->$SwitchMap$com$dropbox$core$v2$files$WriteError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/WriteError;->tag()Lcom/dropbox/core/v2/files/WriteError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/WriteError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 425
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 428
    :goto_0
    return-void

    .line 393
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 394
    const-string/jumbo v0, "malformed_path"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 395
    const-string/jumbo v0, "malformed_path"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError;->access$000(Lcom/dropbox/core/v2/files/WriteError;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 397
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 401
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 402
    const-string/jumbo v0, "conflict"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 403
    const-string/jumbo v0, "conflict"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 404
    sget-object v0, Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/files/WriteError;->access$100(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/WriteConflictError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/files/WriteConflictError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteConflictError;Lcom/d/a/a/g;)V

    .line 405
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 409
    :pswitch_2
    const-string/jumbo v0, "no_write_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :pswitch_3
    const-string/jumbo v0, "insufficient_space"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :pswitch_4
    const-string/jumbo v0, "disallowed_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :pswitch_5
    const-string/jumbo v0, "team_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 386
    check-cast p1, Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/WriteError$Serializer;->serialize(Lcom/dropbox/core/v2/files/WriteError;Lcom/d/a/a/g;)V

    return-void
.end method
