.class Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AddFolderMemberError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/AddFolderMemberError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 589
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 665
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 666
    const/4 v1, 0x1

    .line 667
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 675
    :goto_0
    if-nez v0, :cond_1

    .line 676
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_0
    const/4 v1, 0x0

    .line 672
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 673
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 678
    :cond_1
    const-string/jumbo v2, "access_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 680
    const-string/jumbo v0, "access_error"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 681
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v0

    .line 682
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    .line 726
    :goto_1
    if-nez v1, :cond_2

    .line 727
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 728
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 730
    :cond_2
    return-object v0

    .line 684
    :cond_3
    const-string/jumbo v2, "email_unverified"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 685
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->EMAIL_UNVERIFIED:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    goto :goto_1

    .line 687
    :cond_4
    const-string/jumbo v2, "bad_member"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 689
    const-string/jumbo v0, "bad_member"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 690
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v0

    .line 691
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->badMember(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    goto :goto_1

    .line 693
    :cond_5
    const-string/jumbo v2, "cant_share_outside_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 694
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->CANT_SHARE_OUTSIDE_TEAM:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    goto :goto_1

    .line 696
    :cond_6
    const-string/jumbo v2, "too_many_members"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 698
    const-string/jumbo v0, "too_many_members"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 699
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 700
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyMembers(J)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    goto :goto_1

    .line 702
    :cond_7
    const-string/jumbo v2, "too_many_pending_invites"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 704
    const-string/jumbo v0, "too_many_pending_invites"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 705
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 706
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tooManyPendingInvites(J)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    goto :goto_1

    .line 708
    :cond_8
    const-string/jumbo v2, "rate_limit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 709
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->RATE_LIMIT:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    goto/16 :goto_1

    .line 711
    :cond_9
    const-string/jumbo v2, "too_many_invitees"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 712
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->TOO_MANY_INVITEES:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    goto/16 :goto_1

    .line 714
    :cond_a
    const-string/jumbo v2, "insufficient_plan"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 715
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->INSUFFICIENT_PLAN:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    goto/16 :goto_1

    .line 717
    :cond_b
    const-string/jumbo v2, "team_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 718
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    goto/16 :goto_1

    .line 720
    :cond_c
    const-string/jumbo v2, "no_permission"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 721
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    goto/16 :goto_1

    .line 724
    :cond_d
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->OTHER:Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    goto/16 :goto_1
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
    .line 588
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 593
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$1;->$SwitchMap$com$dropbox$core$v2$sharing$AddFolderMemberError$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->tag()Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 655
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 658
    :goto_0
    return-void

    .line 595
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 596
    const-string/jumbo v0, "access_error"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 597
    const-string/jumbo v0, "access_error"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 598
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->access$000(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;Lcom/d/a/a/g;)V

    .line 599
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 603
    :pswitch_1
    const-string/jumbo v0, "email_unverified"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 607
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 608
    const-string/jumbo v0, "bad_member"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 609
    const-string/jumbo v0, "bad_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 610
    sget-object v0, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->access$100(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AddMemberSelectorError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AddMemberSelectorError;Lcom/d/a/a/g;)V

    .line 611
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 615
    :pswitch_3
    const-string/jumbo v0, "cant_share_outside_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :pswitch_4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 620
    const-string/jumbo v0, "too_many_members"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 621
    const-string/jumbo v0, "too_many_members"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->access$200(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 623
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 627
    :pswitch_5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 628
    const-string/jumbo v0, "too_many_pending_invites"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 629
    const-string/jumbo v0, "too_many_pending_invites"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->uInt64()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;->access$300(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 631
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 635
    :pswitch_6
    const-string/jumbo v0, "rate_limit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 639
    :pswitch_7
    const-string/jumbo v0, "too_many_invitees"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 643
    :pswitch_8
    const-string/jumbo v0, "insufficient_plan"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 647
    :pswitch_9
    const-string/jumbo v0, "team_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 651
    :pswitch_a
    const-string/jumbo v0, "no_permission"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
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
    .line 588
    check-cast p1, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AddFolderMemberError;Lcom/d/a/a/g;)V

    return-void
.end method
