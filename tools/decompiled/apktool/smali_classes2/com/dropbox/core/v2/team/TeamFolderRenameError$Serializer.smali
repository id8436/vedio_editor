.class Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TeamFolderRenameError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/TeamFolderRenameError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;

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
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 473
    const/4 v1, 0x1

    .line 474
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 482
    :goto_0
    if-nez v0, :cond_1

    .line 483
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    const/4 v1, 0x0

    .line 479
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 480
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 485
    :cond_1
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 488
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v0

    .line 489
    invoke-static {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->accessError(Lcom/dropbox/core/v2/team/TeamFolderAccessError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    .line 518
    :goto_1
    if-nez v1, :cond_2

    .line 519
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 520
    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 522
    :cond_2
    return-object v0

    .line 491
    :cond_3
    const-string/jumbo v2, "status_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 493
    const-string/jumbo v0, "status_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 494
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v0

    .line 495
    invoke-static {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->statusError(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    goto :goto_1

    .line 497
    :cond_4
    const-string/jumbo v2, "team_shared_dropbox_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 499
    const-string/jumbo v0, "team_shared_dropbox_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 500
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    move-result-object v0

    .line 501
    invoke-static {v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->teamSharedDropboxError(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    goto :goto_1

    .line 503
    :cond_5
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 504
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->OTHER:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    goto :goto_1

    .line 506
    :cond_6
    const-string/jumbo v2, "invalid_folder_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 507
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->INVALID_FOLDER_NAME:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    goto :goto_1

    .line 509
    :cond_7
    const-string/jumbo v2, "folder_name_already_used"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 510
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_ALREADY_USED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    goto :goto_1

    .line 512
    :cond_8
    const-string/jumbo v2, "folder_name_reserved"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 513
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->FOLDER_NAME_RESERVED:Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    goto :goto_1

    .line 516
    :cond_9
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
    .line 415
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/TeamFolderRenameError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 420
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError$1;->$SwitchMap$com$dropbox$core$v2$team$TeamFolderRenameError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->tag()Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->tag()Lcom/dropbox/core/v2/team/TeamFolderRenameError$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 423
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 424
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->access$000(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderAccessError;Lcom/d/a/a/g;)V

    .line 426
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 465
    :goto_0
    return-void

    .line 430
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 431
    const-string/jumbo v0, "status_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 432
    const-string/jumbo v0, "status_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 433
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->access$100(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderInvalidStatusError;Lcom/d/a/a/g;)V

    .line 434
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 438
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 439
    const-string/jumbo v0, "team_shared_dropbox_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 440
    const-string/jumbo v0, "team_shared_dropbox_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/TeamFolderRenameError;->access$200(Lcom/dropbox/core/v2/team/TeamFolderRenameError;)Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderTeamSharedDropboxError;Lcom/d/a/a/g;)V

    .line 442
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 446
    :pswitch_3
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :pswitch_4
    const-string/jumbo v0, "invalid_folder_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :pswitch_5
    const-string/jumbo v0, "folder_name_already_used"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :pswitch_6
    const-string/jumbo v0, "folder_name_reserved"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    nop

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
    .line 415
    check-cast p1, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->serialize(Lcom/dropbox/core/v2/team/TeamFolderRenameError;Lcom/d/a/a/g;)V

    return-void
.end method
