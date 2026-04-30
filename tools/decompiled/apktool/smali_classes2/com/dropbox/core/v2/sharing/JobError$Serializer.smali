.class Lcom/dropbox/core/v2/sharing/JobError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "JobError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/JobError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/JobError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/dropbox/core/v2/sharing/JobError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/JobError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 456
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 457
    const/4 v1, 0x1

    .line 458
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 466
    :goto_0
    if-nez v0, :cond_1

    .line 467
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_0
    const/4 v1, 0x0

    .line 463
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 464
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 469
    :cond_1
    const-string/jumbo v2, "unshare_folder_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 471
    const-string/jumbo v0, "unshare_folder_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 472
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v0

    .line 473
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/JobError;->unshareFolderError(Lcom/dropbox/core/v2/sharing/UnshareFolderError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v0

    .line 490
    :goto_1
    if-nez v1, :cond_2

    .line 491
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 492
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 494
    :cond_2
    return-object v0

    .line 475
    :cond_3
    const-string/jumbo v2, "remove_folder_member_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 477
    const-string/jumbo v0, "remove_folder_member_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 478
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    .line 479
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/JobError;->removeFolderMemberError(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v0

    goto :goto_1

    .line 481
    :cond_4
    const-string/jumbo v2, "relinquish_folder_membership_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 483
    const-string/jumbo v0, "relinquish_folder_membership_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 484
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    .line 485
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/JobError;->relinquishFolderMembershipError(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v0

    goto :goto_1

    .line 488
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError;->OTHER:Lcom/dropbox/core/v2/sharing/JobError;

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
    .line 415
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/JobError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/JobError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 420
    sget-object v0, Lcom/dropbox/core/v2/sharing/JobError$1;->$SwitchMap$com$dropbox$core$v2$sharing$JobError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/JobError;->tag()Lcom/dropbox/core/v2/sharing/JobError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/JobError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 446
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 422
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 423
    const-string/jumbo v0, "unshare_folder_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 424
    const-string/jumbo v0, "unshare_folder_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError;->access$000(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/UnshareFolderError;Lcom/d/a/a/g;)V

    .line 426
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 430
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 431
    const-string/jumbo v0, "remove_folder_member_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 432
    const-string/jumbo v0, "remove_folder_member_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError;->access$100(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/d/a/a/g;)V

    .line 434
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 438
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 439
    const-string/jumbo v0, "relinquish_folder_membership_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 440
    const-string/jumbo v0, "relinquish_folder_membership_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/JobError;->access$200(Lcom/dropbox/core/v2/sharing/JobError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;Lcom/d/a/a/g;)V

    .line 442
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 420
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
    .line 415
    check-cast p1, Lcom/dropbox/core/v2/sharing/JobError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/JobError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/JobError;Lcom/d/a/a/g;)V

    return-void
.end method
