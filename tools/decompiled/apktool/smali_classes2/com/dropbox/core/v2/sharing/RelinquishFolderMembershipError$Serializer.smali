.class Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RelinquishFolderMembershipError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 409
    const/4 v1, 0x1

    .line 410
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 418
    :goto_0
    if-nez v0, :cond_1

    .line 419
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 414
    :cond_0
    const/4 v1, 0x0

    .line 415
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 416
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_1
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 424
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v0

    .line 425
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    .line 448
    :goto_1
    if-nez v1, :cond_2

    .line 449
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 450
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 452
    :cond_2
    return-object v0

    .line 427
    :cond_3
    const-string/jumbo v2, "folder_owner"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 428
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->FOLDER_OWNER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    .line 430
    :cond_4
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 431
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->MOUNTED:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    .line 433
    :cond_5
    const-string/jumbo v2, "group_access"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 434
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->GROUP_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    .line 436
    :cond_6
    const-string/jumbo v2, "team_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 437
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    .line 439
    :cond_7
    const-string/jumbo v2, "no_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 440
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    .line 442
    :cond_8
    const-string/jumbo v2, "no_explicit_access"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 443
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->NO_EXPLICIT_ACCESS:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    goto :goto_1

    .line 446
    :cond_9
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->OTHER:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

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
    .line 359
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 364
    sget-object v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$1;->$SwitchMap$com$dropbox$core$v2$sharing$RelinquishFolderMembershipError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->tag()Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 398
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 401
    :goto_0
    return-void

    .line 366
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 367
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 368
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 369
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;->access$000(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/d/a/a/g;)V

    .line 370
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 374
    :pswitch_1
    const-string/jumbo v0, "folder_owner"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_2
    const-string/jumbo v0, "mounted"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :pswitch_3
    const-string/jumbo v0, "group_access"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :pswitch_4
    const-string/jumbo v0, "team_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :pswitch_5
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :pswitch_6
    const-string/jumbo v0, "no_explicit_access"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 364
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
    .line 359
    check-cast p1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;Lcom/d/a/a/g;)V

    return-void
.end method
