.class Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "UpdateFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 415
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 464
    const/4 v1, 0x1

    .line 465
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 473
    :goto_0
    if-nez v0, :cond_1

    .line 474
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_0
    const/4 v1, 0x0

    .line 470
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 471
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 476
    :cond_1
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 478
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 479
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v0

    .line 480
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v0

    .line 503
    :goto_1
    if-nez v1, :cond_2

    .line 504
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 505
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 507
    :cond_2
    return-object v0

    .line 482
    :cond_3
    const-string/jumbo v2, "member_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 484
    const-string/jumbo v0, "member_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 485
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v0

    .line 486
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->memberError(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v0

    goto :goto_1

    .line 488
    :cond_4
    const-string/jumbo v2, "no_explicit_access"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 490
    const-string/jumbo v0, "no_explicit_access"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 491
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    .line 492
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->noExplicitAccess(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v0

    goto :goto_1

    .line 494
    :cond_5
    const-string/jumbo v2, "insufficient_plan"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 495
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    goto :goto_1

    .line 497
    :cond_6
    const-string/jumbo v2, "no_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 498
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    goto :goto_1

    .line 501
    :cond_7
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

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
    .line 414
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 419
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UpdateFolderMemberError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->tag()Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 453
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 456
    :goto_0
    return-void

    .line 421
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 422
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 423
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 424
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->access$000(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/d/a/a/g;)V

    .line 425
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 429
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 430
    const-string/jumbo v0, "member_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 431
    const-string/jumbo v0, "member_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 432
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->access$100(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderMemberError;Lcom/d/a/a/g;)V

    .line 433
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 437
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 438
    const-string/jumbo v0, "no_explicit_access"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 439
    const-string/jumbo v0, "no_explicit_access"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 440
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;->access$200(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;Lcom/d/a/a/g;)V

    .line 441
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 445
    :pswitch_3
    const-string/jumbo v0, "insufficient_plan"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :pswitch_4
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 419
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
    .line 414
    check-cast p1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;Lcom/d/a/a/g;)V

    return-void
.end method
