.class Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AddFileMemberError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/AddFileMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 341
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 382
    const/4 v1, 0x1

    .line 383
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 391
    :goto_0
    if-nez v0, :cond_1

    .line 392
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    const/4 v1, 0x0

    .line 388
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 389
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 394
    :cond_1
    const-string/jumbo v2, "user_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 396
    const-string/jumbo v0, "user_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 397
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v0

    .line 398
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->userError(Lcom/dropbox/core/v2/sharing/SharingUserError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v0

    .line 415
    :goto_1
    if-nez v1, :cond_2

    .line 416
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 417
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 419
    :cond_2
    return-object v0

    .line 400
    :cond_3
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 402
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 403
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v0

    .line 404
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->accessError(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v0

    goto :goto_1

    .line 406
    :cond_4
    const-string/jumbo v2, "rate_limit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 407
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    goto :goto_1

    .line 409
    :cond_5
    const-string/jumbo v2, "invalid_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 410
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->INVALID_COMMENT:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    goto :goto_1

    .line 413
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/AddFileMemberError;

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
    .line 340
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/AddFileMemberError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 345
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$AddFileMemberError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->tag()Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 371
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 374
    :goto_0
    return-void

    .line 347
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 348
    const-string/jumbo v0, "user_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 349
    const-string/jumbo v0, "user_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->access$000(Lcom/dropbox/core/v2/sharing/AddFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingUserError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingUserError;Lcom/d/a/a/g;)V

    .line 351
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 356
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 357
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFileMemberError;->access$100(Lcom/dropbox/core/v2/sharing/AddFileMemberError;)Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharingFileAccessError;Lcom/d/a/a/g;)V

    .line 359
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 363
    :pswitch_2
    const-string/jumbo v0, "rate_limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :pswitch_3
    const-string/jumbo v0, "invalid_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 345
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
    .line 340
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AddFileMemberError;Lcom/d/a/a/g;)V

    return-void
.end method
