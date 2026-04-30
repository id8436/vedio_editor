.class Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "MountFolderError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/MountFolderError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/MountFolderError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 436
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 438
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 446
    :goto_0
    if-nez v0, :cond_1

    .line 447
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    const/4 v1, 0x0

    .line 443
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 444
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_1
    const-string/jumbo v3, "access_error"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 451
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 452
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v0

    .line 453
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    .line 475
    :goto_1
    if-nez v1, :cond_2

    .line 476
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 477
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 479
    :cond_2
    return-object v0

    .line 455
    :cond_3
    const-string/jumbo v3, "inside_shared_folder"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 456
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/MountFolderError;

    goto :goto_1

    .line 458
    :cond_4
    const-string/jumbo v3, "insufficient_quota"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 460
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    move-result-object v0

    .line 461
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/MountFolderError;->insufficientQuota(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    goto :goto_1

    .line 463
    :cond_5
    const-string/jumbo v2, "already_mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 464
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->ALREADY_MOUNTED:Lcom/dropbox/core/v2/sharing/MountFolderError;

    goto :goto_1

    .line 466
    :cond_6
    const-string/jumbo v2, "no_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 467
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/MountFolderError;

    goto :goto_1

    .line 469
    :cond_7
    const-string/jumbo v2, "not_mountable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 470
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->NOT_MOUNTABLE:Lcom/dropbox/core/v2/sharing/MountFolderError;

    goto :goto_1

    .line 473
    :cond_8
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/MountFolderError;

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
    .line 388
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/MountFolderError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/MountFolderError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 393
    sget-object v0, Lcom/dropbox/core/v2/sharing/MountFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$MountFolderError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->tag()Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/MountFolderError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 426
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 429
    :goto_0
    return-void

    .line 395
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 396
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 397
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 398
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->access$000(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/d/a/a/g;)V

    .line 399
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 403
    :pswitch_1
    const-string/jumbo v0, "inside_shared_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 408
    const-string/jumbo v0, "insufficient_quota"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 409
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MountFolderError;->access$100(Lcom/dropbox/core/v2/sharing/MountFolderError;)Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InsufficientQuotaAmounts;Lcom/d/a/a/g;Z)V

    .line 410
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 414
    :pswitch_3
    const-string/jumbo v0, "already_mounted"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :pswitch_4
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :pswitch_5
    const-string/jumbo v0, "not_mountable"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    nop

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
    .line 388
    check-cast p1, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MountFolderError;Lcom/d/a/a/g;)V

    return-void
.end method
