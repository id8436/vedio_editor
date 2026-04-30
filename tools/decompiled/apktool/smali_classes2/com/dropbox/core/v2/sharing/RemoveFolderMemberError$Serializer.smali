.class Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RemoveFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 377
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 426
    const/4 v1, 0x1

    .line 427
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 435
    :goto_0
    if-nez v0, :cond_1

    .line 436
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    const/4 v1, 0x0

    .line 432
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 433
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_1
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 440
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 441
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v0

    .line 442
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    .line 465
    :goto_1
    if-nez v1, :cond_2

    .line 466
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 467
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 469
    :cond_2
    return-object v0

    .line 444
    :cond_3
    const-string/jumbo v2, "member_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 446
    const-string/jumbo v0, "member_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 447
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->memberError(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    goto :goto_1

    .line 450
    :cond_4
    const-string/jumbo v2, "folder_owner"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 451
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    goto :goto_1

    .line 453
    :cond_5
    const-string/jumbo v2, "group_access"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 454
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    goto :goto_1

    .line 456
    :cond_6
    const-string/jumbo v2, "team_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 457
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    goto :goto_1

    .line 459
    :cond_7
    const-string/jumbo v2, "no_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 460
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    goto :goto_1

    .line 463
    :cond_8
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

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
    .line 376
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 381
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RemoveFolderMemberError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->tag()Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 415
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 418
    :goto_0
    return-void

    .line 383
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 384
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 385
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 386
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->access$000(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/d/a/a/g;)V

    .line 387
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 391
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 392
    const-string/jumbo v0, "member_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 393
    const-string/jumbo v0, "member_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 394
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;->access$100(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/d/a/a/g;)V

    .line 395
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 399
    :pswitch_2
    const-string/jumbo v0, "folder_owner"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :pswitch_3
    const-string/jumbo v0, "group_access"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :pswitch_4
    const-string/jumbo v0, "team_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :pswitch_5
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 381
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
    .line 376
    check-cast p1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;Lcom/d/a/a/g;)V

    return-void
.end method
