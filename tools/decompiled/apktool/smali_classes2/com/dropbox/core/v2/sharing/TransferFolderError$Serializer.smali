.class Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TransferFolderError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/TransferFolderError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 351
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;

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
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/TransferFolderError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 400
    const/4 v1, 0x1

    .line 401
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 409
    :goto_0
    if-nez v0, :cond_1

    .line 410
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    const/4 v1, 0x0

    .line 406
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 407
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_1
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 415
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v0

    .line 416
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    .line 439
    :goto_1
    if-nez v1, :cond_2

    .line 440
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 441
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 443
    :cond_2
    return-object v0

    .line 418
    :cond_3
    const-string/jumbo v2, "invalid_dropbox_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 419
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->INVALID_DROPBOX_ID:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    goto :goto_1

    .line 421
    :cond_4
    const-string/jumbo v2, "new_owner_not_a_member"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 422
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_NOT_A_MEMBER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    goto :goto_1

    .line 424
    :cond_5
    const-string/jumbo v2, "new_owner_unmounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 425
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_UNMOUNTED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    goto :goto_1

    .line 427
    :cond_6
    const-string/jumbo v2, "new_owner_email_unverified"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 428
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NEW_OWNER_EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    goto :goto_1

    .line 430
    :cond_7
    const-string/jumbo v2, "team_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 431
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    goto :goto_1

    .line 433
    :cond_8
    const-string/jumbo v2, "no_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 434
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/TransferFolderError;

    goto :goto_1

    .line 437
    :cond_9
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/TransferFolderError;

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
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/TransferFolderError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/TransferFolderError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 355
    sget-object v0, Lcom/dropbox/core/v2/sharing/TransferFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$TransferFolderError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->tag()Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 389
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 357
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 358
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 359
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 360
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/TransferFolderError;->access$000(Lcom/dropbox/core/v2/sharing/TransferFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/d/a/a/g;)V

    .line 361
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 365
    :pswitch_1
    const-string/jumbo v0, "invalid_dropbox_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :pswitch_2
    const-string/jumbo v0, "new_owner_not_a_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :pswitch_3
    const-string/jumbo v0, "new_owner_unmounted"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :pswitch_4
    const-string/jumbo v0, "new_owner_email_unverified"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :pswitch_5
    const-string/jumbo v0, "team_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :pswitch_6
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
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
    check-cast p1, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/TransferFolderError;Lcom/d/a/a/g;)V

    return-void
.end method
