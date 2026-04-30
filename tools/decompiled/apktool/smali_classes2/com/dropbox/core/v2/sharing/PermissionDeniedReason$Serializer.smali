.class Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "PermissionDeniedReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 604
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 606
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 614
    :goto_0
    if-nez v0, :cond_1

    .line 615
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_0
    const/4 v1, 0x0

    .line 611
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 612
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 617
    :cond_1
    const-string/jumbo v3, "user_not_same_team_as_owner"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 618
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_SAME_TEAM_AS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .line 667
    :goto_1
    if-nez v1, :cond_2

    .line 668
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 669
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 671
    :cond_2
    return-object v0

    .line 620
    :cond_3
    const-string/jumbo v3, "user_not_allowed_by_owner"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 621
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ALLOWED_BY_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto :goto_1

    .line 623
    :cond_4
    const-string/jumbo v3, "target_is_indirect_member"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 624
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_INDIRECT_MEMBER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto :goto_1

    .line 626
    :cond_5
    const-string/jumbo v3, "target_is_owner"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 627
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_OWNER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto :goto_1

    .line 629
    :cond_6
    const-string/jumbo v3, "target_is_self"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 630
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_IS_SELF:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto :goto_1

    .line 632
    :cond_7
    const-string/jumbo v3, "target_not_active"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 633
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->TARGET_NOT_ACTIVE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto :goto_1

    .line 635
    :cond_8
    const-string/jumbo v3, "folder_is_limited_team_folder"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 636
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_LIMITED_TEAM_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto :goto_1

    .line 638
    :cond_9
    const-string/jumbo v3, "owner_not_on_team"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 639
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OWNER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto :goto_1

    .line 641
    :cond_a
    const-string/jumbo v3, "permission_denied"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 642
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->PERMISSION_DENIED:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto :goto_1

    .line 644
    :cond_b
    const-string/jumbo v3, "restricted_by_team"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 645
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->RESTRICTED_BY_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto :goto_1

    .line 647
    :cond_c
    const-string/jumbo v3, "user_account_type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 648
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_ACCOUNT_TYPE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto :goto_1

    .line 650
    :cond_d
    const-string/jumbo v3, "user_not_on_team"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 651
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->USER_NOT_ON_TEAM:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto/16 :goto_1

    .line 653
    :cond_e
    const-string/jumbo v3, "folder_is_inside_shared_folder"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 654
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->FOLDER_IS_INSIDE_SHARED_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto/16 :goto_1

    .line 656
    :cond_f
    const-string/jumbo v3, "restricted_by_parent_folder"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 657
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->RESTRICTED_BY_PARENT_FOLDER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    goto/16 :goto_1

    .line 659
    :cond_10
    const-string/jumbo v3, "insufficient_plan"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 661
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientPlan$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientPlan$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/sharing/InsufficientPlan$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    move-result-object v0

    .line 662
    invoke-static {v0}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->insufficientPlan(Lcom/dropbox/core/v2/sharing/InsufficientPlan;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    goto/16 :goto_1

    .line 665
    :cond_11
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->OTHER:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

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
    .line 524
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 529
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$1;->$SwitchMap$com$dropbox$core$v2$sharing$PermissionDeniedReason$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->tag()Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 594
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 597
    :goto_0
    return-void

    .line 531
    :pswitch_0
    const-string/jumbo v0, "user_not_same_team_as_owner"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 535
    :pswitch_1
    const-string/jumbo v0, "user_not_allowed_by_owner"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 539
    :pswitch_2
    const-string/jumbo v0, "target_is_indirect_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    :pswitch_3
    const-string/jumbo v0, "target_is_owner"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :pswitch_4
    const-string/jumbo v0, "target_is_self"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :pswitch_5
    const-string/jumbo v0, "target_not_active"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :pswitch_6
    const-string/jumbo v0, "folder_is_limited_team_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :pswitch_7
    const-string/jumbo v0, "owner_not_on_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 563
    :pswitch_8
    const-string/jumbo v0, "permission_denied"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :pswitch_9
    const-string/jumbo v0, "restricted_by_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 571
    :pswitch_a
    const-string/jumbo v0, "user_account_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 575
    :pswitch_b
    const-string/jumbo v0, "user_not_on_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 579
    :pswitch_c
    const-string/jumbo v0, "folder_is_inside_shared_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :pswitch_d
    const-string/jumbo v0, "restricted_by_parent_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 587
    :pswitch_e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 588
    const-string/jumbo v0, "insufficient_plan"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 589
    sget-object v0, Lcom/dropbox/core/v2/sharing/InsufficientPlan$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InsufficientPlan$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;->access$000(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;)Lcom/dropbox/core/v2/sharing/InsufficientPlan;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/sharing/InsufficientPlan$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/InsufficientPlan;Lcom/d/a/a/g;Z)V

    .line 590
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 529
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
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
    .line 524
    check-cast p1, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;Lcom/d/a/a/g;)V

    return-void
.end method
