.class Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "EventDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/EventDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20873
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20872
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/EventDetails;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 22786
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 22788
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 22789
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 22796
    :goto_0
    if-nez v0, :cond_1

    .line 22797
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 22792
    :cond_0
    const/4 v1, 0x0

    .line 22793
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 22794
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 22799
    :cond_1
    const-string/jumbo v3, "member_change_membership_type_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 22801
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;

    move-result-object v0

    .line 22802
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeMembershipTypeDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    .line 24157
    :goto_1
    if-nez v1, :cond_2

    .line 24158
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 24159
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 24161
    :cond_2
    return-object v0

    .line 22804
    :cond_3
    const-string/jumbo v3, "member_permanently_delete_account_contents_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 22806
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;

    move-result-object v0

    .line 22807
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberPermanentlyDeleteAccountContentsDetails(Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    .line 22809
    :cond_4
    const-string/jumbo v3, "member_space_limits_change_status_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22811
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;

    move-result-object v0

    .line 22812
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    .line 22814
    :cond_5
    const-string/jumbo v3, "member_transfer_account_contents_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 22816
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;

    move-result-object v0

    .line 22817
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberTransferAccountContentsDetails(Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    .line 22819
    :cond_6
    const-string/jumbo v3, "paper_admin_export_start_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 22821
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;

    move-result-object v0

    .line 22822
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperAdminExportStartDetails(Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    .line 22824
    :cond_7
    const-string/jumbo v3, "paper_enabled_users_group_addition_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 22826
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;

    move-result-object v0

    .line 22827
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperEnabledUsersGroupAdditionDetails(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    .line 22829
    :cond_8
    const-string/jumbo v3, "paper_enabled_users_group_removal_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 22831
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;

    move-result-object v0

    .line 22832
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperEnabledUsersGroupRemovalDetails(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto :goto_1

    .line 22834
    :cond_9
    const-string/jumbo v3, "paper_external_view_allow_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 22836
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;

    move-result-object v0

    .line 22837
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperExternalViewAllowDetails(Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22839
    :cond_a
    const-string/jumbo v3, "paper_external_view_default_team_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 22841
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;

    move-result-object v0

    .line 22842
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperExternalViewDefaultTeamDetails(Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22844
    :cond_b
    const-string/jumbo v3, "paper_external_view_forbid_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 22846
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;

    move-result-object v0

    .line 22847
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperExternalViewForbidDetails(Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22849
    :cond_c
    const-string/jumbo v3, "sf_external_invite_warn_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 22851
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;

    move-result-object v0

    .line 22852
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfExternalInviteWarnDetails(Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22854
    :cond_d
    const-string/jumbo v3, "team_merge_from_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 22856
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;

    move-result-object v0

    .line 22857
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeFromDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22859
    :cond_e
    const-string/jumbo v3, "team_merge_to_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 22861
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;

    move-result-object v0

    .line 22862
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamMergeToDetails(Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22864
    :cond_f
    const-string/jumbo v3, "app_link_team_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 22866
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;

    move-result-object v0

    .line 22867
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appLinkTeamDetails(Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22869
    :cond_10
    const-string/jumbo v3, "app_link_user_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 22871
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;

    move-result-object v0

    .line 22872
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appLinkUserDetails(Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22874
    :cond_11
    const-string/jumbo v3, "app_unlink_team_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 22876
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;

    move-result-object v0

    .line 22877
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appUnlinkTeamDetails(Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22879
    :cond_12
    const-string/jumbo v3, "app_unlink_user_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 22881
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;

    move-result-object v0

    .line 22882
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->appUnlinkUserDetails(Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22884
    :cond_13
    const-string/jumbo v3, "file_add_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 22886
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;

    move-result-object v0

    .line 22887
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileAddCommentDetails(Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22889
    :cond_14
    const-string/jumbo v3, "file_change_comment_subscription_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 22891
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;

    move-result-object v0

    .line 22892
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileChangeCommentSubscriptionDetails(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22894
    :cond_15
    const-string/jumbo v3, "file_delete_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 22896
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;

    move-result-object v0

    .line 22897
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileDeleteCommentDetails(Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22899
    :cond_16
    const-string/jumbo v3, "file_like_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 22901
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;

    move-result-object v0

    .line 22902
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileLikeCommentDetails(Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22904
    :cond_17
    const-string/jumbo v3, "file_resolve_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22906
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;

    move-result-object v0

    .line 22907
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileResolveCommentDetails(Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22909
    :cond_18
    const-string/jumbo v3, "file_unlike_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 22911
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;

    move-result-object v0

    .line 22912
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileUnlikeCommentDetails(Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22914
    :cond_19
    const-string/jumbo v3, "file_unresolve_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 22916
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;

    move-result-object v0

    .line 22917
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileUnresolveCommentDetails(Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22919
    :cond_1a
    const-string/jumbo v3, "device_change_ip_desktop_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 22921
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;

    move-result-object v0

    .line 22922
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceChangeIpDesktopDetails(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22924
    :cond_1b
    const-string/jumbo v3, "device_change_ip_mobile_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 22926
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;

    move-result-object v0

    .line 22927
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceChangeIpMobileDetails(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22929
    :cond_1c
    const-string/jumbo v3, "device_change_ip_web_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 22931
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;

    move-result-object v0

    .line 22932
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceChangeIpWebDetails(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22934
    :cond_1d
    const-string/jumbo v3, "device_delete_on_unlink_fail_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 22936
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;

    move-result-object v0

    .line 22937
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceDeleteOnUnlinkFailDetails(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22939
    :cond_1e
    const-string/jumbo v3, "device_delete_on_unlink_success_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 22941
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;

    move-result-object v0

    .line 22942
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceDeleteOnUnlinkSuccessDetails(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22944
    :cond_1f
    const-string/jumbo v3, "device_link_fail_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 22946
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;

    move-result-object v0

    .line 22947
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceLinkFailDetails(Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22949
    :cond_20
    const-string/jumbo v3, "device_link_success_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 22951
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;

    move-result-object v0

    .line 22952
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceLinkSuccessDetails(Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22954
    :cond_21
    const-string/jumbo v3, "device_management_disabled_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 22956
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;

    move-result-object v0

    .line 22957
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceManagementDisabledDetails(Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22959
    :cond_22
    const-string/jumbo v3, "device_management_enabled_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 22961
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;

    move-result-object v0

    .line 22962
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceManagementEnabledDetails(Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22964
    :cond_23
    const-string/jumbo v3, "device_unlink_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 22966
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;

    move-result-object v0

    .line 22967
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceUnlinkDetails(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22969
    :cond_24
    const-string/jumbo v3, "emm_refresh_auth_token_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 22971
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;

    move-result-object v0

    .line 22972
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmRefreshAuthTokenDetails(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22974
    :cond_25
    const-string/jumbo v3, "account_capture_change_availability_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 22976
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;

    move-result-object v0

    .line 22977
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureChangeAvailabilityDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22979
    :cond_26
    const-string/jumbo v3, "account_capture_migrate_account_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 22981
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;

    move-result-object v0

    .line 22982
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureMigrateAccountDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22984
    :cond_27
    const-string/jumbo v3, "account_capture_relinquish_account_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 22986
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;

    move-result-object v0

    .line 22987
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureRelinquishAccountDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22989
    :cond_28
    const-string/jumbo v3, "disabled_domain_invites_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 22991
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;

    move-result-object v0

    .line 22992
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->disabledDomainInvitesDetails(Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22994
    :cond_29
    const-string/jumbo v3, "domain_invites_approve_request_to_join_team_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 22996
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;

    move-result-object v0

    .line 22997
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesApproveRequestToJoinTeamDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 22999
    :cond_2a
    const-string/jumbo v3, "domain_invites_decline_request_to_join_team_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 23001
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;

    move-result-object v0

    .line 23002
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesDeclineRequestToJoinTeamDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23004
    :cond_2b
    const-string/jumbo v3, "domain_invites_email_existing_users_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 23006
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    move-result-object v0

    .line 23007
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesEmailExistingUsersDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23009
    :cond_2c
    const-string/jumbo v3, "domain_invites_request_to_join_team_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 23011
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;

    move-result-object v0

    .line 23012
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesRequestToJoinTeamDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23014
    :cond_2d
    const-string/jumbo v3, "domain_invites_set_invite_new_user_pref_to_no_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 23016
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;

    move-result-object v0

    .line 23017
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesSetInviteNewUserPrefToNoDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23019
    :cond_2e
    const-string/jumbo v3, "domain_invites_set_invite_new_user_pref_to_yes_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 23021
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;

    move-result-object v0

    .line 23022
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainInvitesSetInviteNewUserPrefToYesDetails(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23024
    :cond_2f
    const-string/jumbo v3, "domain_verification_add_domain_fail_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 23026
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;

    move-result-object v0

    .line 23027
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainVerificationAddDomainFailDetails(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23029
    :cond_30
    const-string/jumbo v3, "domain_verification_add_domain_success_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 23031
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;

    move-result-object v0

    .line 23032
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainVerificationAddDomainSuccessDetails(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23034
    :cond_31
    const-string/jumbo v3, "domain_verification_remove_domain_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 23036
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;

    move-result-object v0

    .line 23037
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->domainVerificationRemoveDomainDetails(Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23039
    :cond_32
    const-string/jumbo v3, "enabled_domain_invites_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 23041
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;

    move-result-object v0

    .line 23042
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->enabledDomainInvitesDetails(Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23044
    :cond_33
    const-string/jumbo v3, "create_folder_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 23046
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;

    move-result-object v0

    .line 23047
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->createFolderDetails(Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23049
    :cond_34
    const-string/jumbo v3, "file_add_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 23051
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileAddDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileAddDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileAddDetails;

    move-result-object v0

    .line 23052
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileAddDetails(Lcom/dropbox/core/v2/teamlog/FileAddDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23054
    :cond_35
    const-string/jumbo v3, "file_copy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 23056
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileCopyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileCopyDetails;

    move-result-object v0

    .line 23057
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileCopyDetails(Lcom/dropbox/core/v2/teamlog/FileCopyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23059
    :cond_36
    const-string/jumbo v3, "file_delete_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 23061
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;

    move-result-object v0

    .line 23062
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileDeleteDetails(Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23064
    :cond_37
    const-string/jumbo v3, "file_download_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 23066
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;

    move-result-object v0

    .line 23067
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileDownloadDetails(Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23069
    :cond_38
    const-string/jumbo v3, "file_edit_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 23071
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileEditDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileEditDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileEditDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileEditDetails;

    move-result-object v0

    .line 23072
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileEditDetails(Lcom/dropbox/core/v2/teamlog/FileEditDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23074
    :cond_39
    const-string/jumbo v3, "file_get_copy_reference_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 23076
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;

    move-result-object v0

    .line 23077
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileGetCopyReferenceDetails(Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23079
    :cond_3a
    const-string/jumbo v3, "file_move_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 23081
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileMoveDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileMoveDetails;

    move-result-object v0

    .line 23082
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileMoveDetails(Lcom/dropbox/core/v2/teamlog/FileMoveDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23084
    :cond_3b
    const-string/jumbo v3, "file_permanently_delete_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 23086
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;

    move-result-object v0

    .line 23087
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->filePermanentlyDeleteDetails(Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23089
    :cond_3c
    const-string/jumbo v3, "file_preview_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 23091
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;

    move-result-object v0

    .line 23092
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->filePreviewDetails(Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23094
    :cond_3d
    const-string/jumbo v3, "file_rename_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 23096
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRenameDetails;

    move-result-object v0

    .line 23097
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRenameDetails(Lcom/dropbox/core/v2/teamlog/FileRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23099
    :cond_3e
    const-string/jumbo v3, "file_restore_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 23101
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;

    move-result-object v0

    .line 23102
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRestoreDetails(Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23104
    :cond_3f
    const-string/jumbo v3, "file_revert_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 23106
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRevertDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRevertDetails;

    move-result-object v0

    .line 23107
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRevertDetails(Lcom/dropbox/core/v2/teamlog/FileRevertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23109
    :cond_40
    const-string/jumbo v3, "file_rollback_changes_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 23111
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;

    move-result-object v0

    .line 23112
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRollbackChangesDetails(Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23114
    :cond_41
    const-string/jumbo v3, "file_save_copy_reference_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 23116
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;

    move-result-object v0

    .line 23117
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileSaveCopyReferenceDetails(Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23119
    :cond_42
    const-string/jumbo v3, "file_request_add_deadline_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 23121
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestAddDeadlineDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestAddDeadlineDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestAddDeadlineDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestAddDeadlineDetails;

    move-result-object v0

    .line 23122
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestAddDeadlineDetails(Lcom/dropbox/core/v2/teamlog/FileRequestAddDeadlineDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23124
    :cond_43
    const-string/jumbo v3, "file_request_change_folder_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 23126
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestChangeFolderDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeFolderDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestChangeFolderDetails;

    move-result-object v0

    .line 23127
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestChangeFolderDetails(Lcom/dropbox/core/v2/teamlog/FileRequestChangeFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23129
    :cond_44
    const-string/jumbo v3, "file_request_change_title_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 23131
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeTitleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestChangeTitleDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeTitleDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestChangeTitleDetails;

    move-result-object v0

    .line 23132
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestChangeTitleDetails(Lcom/dropbox/core/v2/teamlog/FileRequestChangeTitleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23134
    :cond_45
    const-string/jumbo v3, "file_request_close_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 23136
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;

    move-result-object v0

    .line 23137
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestCloseDetails(Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23139
    :cond_46
    const-string/jumbo v3, "file_request_create_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 23141
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;

    move-result-object v0

    .line 23142
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestCreateDetails(Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23144
    :cond_47
    const-string/jumbo v3, "file_request_receive_file_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 23146
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;

    move-result-object v0

    .line 23147
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestReceiveFileDetails(Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23149
    :cond_48
    const-string/jumbo v3, "file_request_remove_deadline_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 23151
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;

    move-result-object v0

    .line 23152
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestRemoveDeadlineDetails(Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23154
    :cond_49
    const-string/jumbo v3, "file_request_send_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 23156
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestSendDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestSendDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestSendDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestSendDetails;

    move-result-object v0

    .line 23157
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestSendDetails(Lcom/dropbox/core/v2/teamlog/FileRequestSendDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23159
    :cond_4a
    const-string/jumbo v3, "group_add_external_id_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 23161
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;

    move-result-object v0

    .line 23162
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupAddExternalIdDetails(Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23164
    :cond_4b
    const-string/jumbo v3, "group_add_member_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 23166
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;

    move-result-object v0

    .line 23167
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupAddMemberDetails(Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23169
    :cond_4c
    const-string/jumbo v3, "group_change_external_id_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 23171
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;

    move-result-object v0

    .line 23172
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupChangeExternalIdDetails(Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23174
    :cond_4d
    const-string/jumbo v3, "group_change_management_type_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 23176
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;

    move-result-object v0

    .line 23177
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupChangeManagementTypeDetails(Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23179
    :cond_4e
    const-string/jumbo v3, "group_change_member_role_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 23181
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;

    move-result-object v0

    .line 23182
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupChangeMemberRoleDetails(Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23184
    :cond_4f
    const-string/jumbo v3, "group_create_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 23186
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;

    move-result-object v0

    .line 23187
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupCreateDetails(Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23189
    :cond_50
    const-string/jumbo v3, "group_delete_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 23191
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;

    move-result-object v0

    .line 23192
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupDeleteDetails(Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23194
    :cond_51
    const-string/jumbo v3, "group_moved_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 23196
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;

    move-result-object v0

    .line 23197
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupMovedDetails(Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23199
    :cond_52
    const-string/jumbo v3, "group_remove_external_id_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 23201
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;

    move-result-object v0

    .line 23202
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupRemoveExternalIdDetails(Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23204
    :cond_53
    const-string/jumbo v3, "group_remove_member_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 23206
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;

    move-result-object v0

    .line 23207
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23209
    :cond_54
    const-string/jumbo v3, "group_rename_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 23211
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;

    move-result-object v0

    .line 23212
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupRenameDetails(Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23214
    :cond_55
    const-string/jumbo v3, "emm_login_success_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 23216
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmLoginSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmLoginSuccessDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmLoginSuccessDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmLoginSuccessDetails;

    move-result-object v0

    .line 23217
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmLoginSuccessDetails(Lcom/dropbox/core/v2/teamlog/EmmLoginSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23219
    :cond_56
    const-string/jumbo v3, "logout_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 23221
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LogoutDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/LogoutDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/LogoutDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/LogoutDetails;

    move-result-object v0

    .line 23222
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->logoutDetails(Lcom/dropbox/core/v2/teamlog/LogoutDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23224
    :cond_57
    const-string/jumbo v3, "password_login_fail_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 23226
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordLoginFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PasswordLoginFailDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordLoginFailDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PasswordLoginFailDetails;

    move-result-object v0

    .line 23227
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordLoginFailDetails(Lcom/dropbox/core/v2/teamlog/PasswordLoginFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23229
    :cond_58
    const-string/jumbo v3, "password_login_success_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 23231
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordLoginSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PasswordLoginSuccessDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordLoginSuccessDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PasswordLoginSuccessDetails;

    move-result-object v0

    .line 23232
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordLoginSuccessDetails(Lcom/dropbox/core/v2/teamlog/PasswordLoginSuccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23234
    :cond_59
    const-string/jumbo v3, "reseller_support_session_end_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 23236
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;

    move-result-object v0

    .line 23237
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->resellerSupportSessionEndDetails(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23239
    :cond_5a
    const-string/jumbo v3, "reseller_support_session_start_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 23241
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;

    move-result-object v0

    .line 23242
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->resellerSupportSessionStartDetails(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23244
    :cond_5b
    const-string/jumbo v3, "sign_in_as_session_end_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 23246
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;

    move-result-object v0

    .line 23247
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->signInAsSessionEndDetails(Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23249
    :cond_5c
    const-string/jumbo v3, "sign_in_as_session_start_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 23251
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;

    move-result-object v0

    .line 23252
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->signInAsSessionStartDetails(Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23254
    :cond_5d
    const-string/jumbo v3, "sso_login_fail_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 23256
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoLoginFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoLoginFailDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoLoginFailDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoLoginFailDetails;

    move-result-object v0

    .line 23257
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoLoginFailDetails(Lcom/dropbox/core/v2/teamlog/SsoLoginFailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23259
    :cond_5e
    const-string/jumbo v3, "member_add_name_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 23261
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;

    move-result-object v0

    .line 23262
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberAddNameDetails(Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23264
    :cond_5f
    const-string/jumbo v3, "member_change_admin_role_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 23266
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;

    move-result-object v0

    .line 23267
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeAdminRoleDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23269
    :cond_60
    const-string/jumbo v3, "member_change_email_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 23271
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;

    move-result-object v0

    .line 23272
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeEmailDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23274
    :cond_61
    const-string/jumbo v3, "member_change_name_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 23276
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;

    move-result-object v0

    .line 23277
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeNameDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23279
    :cond_62
    const-string/jumbo v3, "member_change_status_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 23281
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    move-result-object v0

    .line 23282
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23284
    :cond_63
    const-string/jumbo v3, "member_suggest_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 23286
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;

    move-result-object v0

    .line 23287
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSuggestDetails(Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23289
    :cond_64
    const-string/jumbo v3, "paper_content_add_member_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 23291
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;

    move-result-object v0

    .line 23292
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentAddMemberDetails(Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23294
    :cond_65
    const-string/jumbo v3, "paper_content_add_to_folder_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 23296
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;

    move-result-object v0

    .line 23297
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentAddToFolderDetails(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23299
    :cond_66
    const-string/jumbo v3, "paper_content_archive_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 23301
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;

    move-result-object v0

    .line 23302
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentArchiveDetails(Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23304
    :cond_67
    const-string/jumbo v3, "paper_content_create_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 23306
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;

    move-result-object v0

    .line 23307
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentCreateDetails(Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23309
    :cond_68
    const-string/jumbo v3, "paper_content_permanently_delete_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 23311
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;

    move-result-object v0

    .line 23312
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentPermanentlyDeleteDetails(Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23314
    :cond_69
    const-string/jumbo v3, "paper_content_remove_from_folder_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 23316
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;

    move-result-object v0

    .line 23317
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRemoveFromFolderDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23319
    :cond_6a
    const-string/jumbo v3, "paper_content_remove_member_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 23321
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;

    move-result-object v0

    .line 23322
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23324
    :cond_6b
    const-string/jumbo v3, "paper_content_rename_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 23326
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;

    move-result-object v0

    .line 23327
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRenameDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23329
    :cond_6c
    const-string/jumbo v3, "paper_content_restore_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 23331
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;

    move-result-object v0

    .line 23332
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperContentRestoreDetails(Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23334
    :cond_6d
    const-string/jumbo v3, "paper_doc_add_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 23336
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;

    move-result-object v0

    .line 23337
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocAddCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23339
    :cond_6e
    const-string/jumbo v3, "paper_doc_change_member_role_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 23341
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;

    move-result-object v0

    .line 23342
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocChangeMemberRoleDetails(Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23344
    :cond_6f
    const-string/jumbo v3, "paper_doc_change_sharing_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 23346
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;

    move-result-object v0

    .line 23347
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocChangeSharingPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23349
    :cond_70
    const-string/jumbo v3, "paper_doc_change_subscription_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 23351
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;

    move-result-object v0

    .line 23352
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocChangeSubscriptionDetails(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23354
    :cond_71
    const-string/jumbo v3, "paper_doc_deleted_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 23356
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;

    move-result-object v0

    .line 23357
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocDeletedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23359
    :cond_72
    const-string/jumbo v3, "paper_doc_delete_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 23361
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;

    move-result-object v0

    .line 23362
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocDeleteCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23364
    :cond_73
    const-string/jumbo v3, "paper_doc_download_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 23366
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;

    move-result-object v0

    .line 23367
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocDownloadDetails(Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23369
    :cond_74
    const-string/jumbo v3, "paper_doc_edit_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 23371
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;

    move-result-object v0

    .line 23372
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocEditDetails(Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23374
    :cond_75
    const-string/jumbo v3, "paper_doc_edit_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 23376
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;

    move-result-object v0

    .line 23377
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocEditCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23379
    :cond_76
    const-string/jumbo v3, "paper_doc_followed_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 23381
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;

    move-result-object v0

    .line 23382
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocFollowedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23384
    :cond_77
    const-string/jumbo v3, "paper_doc_mention_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 23386
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;

    move-result-object v0

    .line 23387
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocMentionDetails(Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23389
    :cond_78
    const-string/jumbo v3, "paper_doc_request_access_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 23391
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;

    move-result-object v0

    .line 23392
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocRequestAccessDetails(Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23394
    :cond_79
    const-string/jumbo v3, "paper_doc_resolve_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 23396
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;

    move-result-object v0

    .line 23397
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocResolveCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23399
    :cond_7a
    const-string/jumbo v3, "paper_doc_revert_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 23401
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;

    move-result-object v0

    .line 23402
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocRevertDetails(Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23404
    :cond_7b
    const-string/jumbo v3, "paper_doc_slack_share_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 23406
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;

    move-result-object v0

    .line 23407
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocSlackShareDetails(Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23409
    :cond_7c
    const-string/jumbo v3, "paper_doc_team_invite_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 23411
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;

    move-result-object v0

    .line 23412
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocTeamInviteDetails(Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23414
    :cond_7d
    const-string/jumbo v3, "paper_doc_trashed_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 23416
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;

    move-result-object v0

    .line 23417
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocTrashedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23419
    :cond_7e
    const-string/jumbo v3, "paper_doc_unresolve_comment_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 23421
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;

    move-result-object v0

    .line 23422
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocUnresolveCommentDetails(Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23424
    :cond_7f
    const-string/jumbo v3, "paper_doc_untrashed_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 23426
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;

    move-result-object v0

    .line 23427
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocUntrashedDetails(Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23429
    :cond_80
    const-string/jumbo v3, "paper_doc_view_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 23431
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;

    move-result-object v0

    .line 23432
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperDocViewDetails(Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23434
    :cond_81
    const-string/jumbo v3, "paper_folder_change_subscription_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    .line 23436
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;

    move-result-object v0

    .line 23437
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderChangeSubscriptionDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23439
    :cond_82
    const-string/jumbo v3, "paper_folder_deleted_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 23441
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;

    move-result-object v0

    .line 23442
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderDeletedDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23444
    :cond_83
    const-string/jumbo v3, "paper_folder_followed_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 23446
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;

    move-result-object v0

    .line 23447
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderFollowedDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23449
    :cond_84
    const-string/jumbo v3, "paper_folder_team_invite_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 23451
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;

    move-result-object v0

    .line 23452
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperFolderTeamInviteDetails(Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23454
    :cond_85
    const-string/jumbo v3, "password_change_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 23456
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;

    move-result-object v0

    .line 23457
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordChangeDetails(Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23459
    :cond_86
    const-string/jumbo v3, "password_reset_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 23461
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;

    move-result-object v0

    .line 23462
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordResetDetails(Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23464
    :cond_87
    const-string/jumbo v3, "password_reset_all_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 23466
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;

    move-result-object v0

    .line 23467
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->passwordResetAllDetails(Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23469
    :cond_88
    const-string/jumbo v3, "emm_create_exceptions_report_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 23471
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;

    move-result-object v0

    .line 23472
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmCreateExceptionsReportDetails(Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23474
    :cond_89
    const-string/jumbo v3, "emm_create_usage_report_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 23476
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;

    move-result-object v0

    .line 23477
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmCreateUsageReportDetails(Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23479
    :cond_8a
    const-string/jumbo v3, "smart_sync_create_admin_privilege_report_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 23481
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;

    move-result-object v0

    .line 23482
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncCreateAdminPrivilegeReportDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23484
    :cond_8b
    const-string/jumbo v3, "team_activity_create_report_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 23486
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;

    move-result-object v0

    .line 23487
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamActivityCreateReportDetails(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23489
    :cond_8c
    const-string/jumbo v3, "collection_share_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 23491
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;

    move-result-object v0

    .line 23492
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->collectionShareDetails(Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23494
    :cond_8d
    const-string/jumbo v3, "note_acl_invite_only_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 23496
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;

    move-result-object v0

    .line 23497
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteAclInviteOnlyDetails(Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23499
    :cond_8e
    const-string/jumbo v3, "note_acl_link_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 23501
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;

    move-result-object v0

    .line 23502
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteAclLinkDetails(Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23504
    :cond_8f
    const-string/jumbo v3, "note_acl_team_link_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 23506
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;

    move-result-object v0

    .line 23507
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteAclTeamLinkDetails(Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23509
    :cond_90
    const-string/jumbo v3, "note_shared_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 23511
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;

    move-result-object v0

    .line 23512
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteSharedDetails(Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23514
    :cond_91
    const-string/jumbo v3, "note_share_receive_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 23516
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;

    move-result-object v0

    .line 23517
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->noteShareReceiveDetails(Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23519
    :cond_92
    const-string/jumbo v3, "open_note_shared_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 23521
    sget-object v0, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;

    move-result-object v0

    .line 23522
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->openNoteSharedDetails(Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23524
    :cond_93
    const-string/jumbo v3, "sf_add_group_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 23526
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;

    move-result-object v0

    .line 23527
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfAddGroupDetails(Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23529
    :cond_94
    const-string/jumbo v3, "sf_allow_non_members_to_view_shared_links_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 23531
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;

    move-result-object v0

    .line 23532
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfAllowNonMembersToViewSharedLinksDetails(Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23534
    :cond_95
    const-string/jumbo v3, "sf_invite_group_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 23536
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;

    move-result-object v0

    .line 23537
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfInviteGroupDetails(Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23539
    :cond_96
    const-string/jumbo v3, "sf_nest_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 23541
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfNestDetails;

    move-result-object v0

    .line 23542
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfNestDetails(Lcom/dropbox/core/v2/teamlog/SfNestDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23544
    :cond_97
    const-string/jumbo v3, "sf_team_decline_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 23546
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamDeclineDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamDeclineDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamDeclineDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfTeamDeclineDetails;

    move-result-object v0

    .line 23547
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamDeclineDetails(Lcom/dropbox/core/v2/teamlog/SfTeamDeclineDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23549
    :cond_98
    const-string/jumbo v3, "sf_team_grant_access_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 23551
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;

    move-result-object v0

    .line 23552
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamGrantAccessDetails(Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23554
    :cond_99
    const-string/jumbo v3, "sf_team_invite_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 23556
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;

    move-result-object v0

    .line 23557
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamInviteDetails(Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23559
    :cond_9a
    const-string/jumbo v3, "sf_team_invite_change_role_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 23561
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;

    move-result-object v0

    .line 23562
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamInviteChangeRoleDetails(Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23564
    :cond_9b
    const-string/jumbo v3, "sf_team_join_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 23566
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;

    move-result-object v0

    .line 23567
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamJoinDetails(Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23569
    :cond_9c
    const-string/jumbo v3, "sf_team_join_from_oob_link_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 23571
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;

    move-result-object v0

    .line 23572
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamJoinFromOobLinkDetails(Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23574
    :cond_9d
    const-string/jumbo v3, "sf_team_uninvite_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 23576
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;

    move-result-object v0

    .line 23577
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sfTeamUninviteDetails(Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23579
    :cond_9e
    const-string/jumbo v3, "shared_content_add_invitees_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 23581
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;

    move-result-object v0

    .line 23582
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddInviteesDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23584
    :cond_9f
    const-string/jumbo v3, "shared_content_add_link_expiry_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 23586
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;

    move-result-object v0

    .line 23587
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddLinkExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23589
    :cond_a0
    const-string/jumbo v3, "shared_content_add_link_password_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    .line 23591
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;

    move-result-object v0

    .line 23592
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddLinkPasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23594
    :cond_a1
    const-string/jumbo v3, "shared_content_add_member_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 23596
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;

    move-result-object v0

    .line 23597
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentAddMemberDetails(Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23599
    :cond_a2
    const-string/jumbo v3, "shared_content_change_downloads_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 23601
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;

    move-result-object v0

    .line 23602
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeDownloadsPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23604
    :cond_a3
    const-string/jumbo v3, "shared_content_change_invitee_role_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 23606
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    move-result-object v0

    .line 23607
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeInviteeRoleDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23609
    :cond_a4
    const-string/jumbo v3, "shared_content_change_link_audience_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 23611
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;

    move-result-object v0

    .line 23612
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeLinkAudienceDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23614
    :cond_a5
    const-string/jumbo v3, "shared_content_change_link_expiry_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 23616
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;

    move-result-object v0

    .line 23617
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeLinkExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23619
    :cond_a6
    const-string/jumbo v3, "shared_content_change_link_password_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 23621
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;

    move-result-object v0

    .line 23622
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeLinkPasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23624
    :cond_a7
    const-string/jumbo v3, "shared_content_change_member_role_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 23626
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;

    move-result-object v0

    .line 23627
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeMemberRoleDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23629
    :cond_a8
    const-string/jumbo v3, "shared_content_change_viewer_info_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 23631
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;

    move-result-object v0

    .line 23632
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentChangeViewerInfoPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23634
    :cond_a9
    const-string/jumbo v3, "shared_content_claim_invitation_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 23636
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;

    move-result-object v0

    .line 23637
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentClaimInvitationDetails(Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23639
    :cond_aa
    const-string/jumbo v3, "shared_content_copy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 23641
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;

    move-result-object v0

    .line 23642
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentCopyDetails(Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23644
    :cond_ab
    const-string/jumbo v3, "shared_content_download_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 23646
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;

    move-result-object v0

    .line 23647
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentDownloadDetails(Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23649
    :cond_ac
    const-string/jumbo v3, "shared_content_relinquish_membership_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 23651
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;

    move-result-object v0

    .line 23652
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRelinquishMembershipDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23654
    :cond_ad
    const-string/jumbo v3, "shared_content_remove_invitee_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 23656
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteeDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteeDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteeDetails;

    move-result-object v0

    .line 23657
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveInviteeDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23659
    :cond_ae
    const-string/jumbo v3, "shared_content_remove_link_expiry_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    .line 23661
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;

    move-result-object v0

    .line 23662
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveLinkExpiryDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23664
    :cond_af
    const-string/jumbo v3, "shared_content_remove_link_password_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 23666
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;

    move-result-object v0

    .line 23667
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveLinkPasswordDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23669
    :cond_b0
    const-string/jumbo v3, "shared_content_remove_member_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 23671
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;

    move-result-object v0

    .line 23672
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRemoveMemberDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23674
    :cond_b1
    const-string/jumbo v3, "shared_content_request_access_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 23676
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;

    move-result-object v0

    .line 23677
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentRequestAccessDetails(Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23679
    :cond_b2
    const-string/jumbo v3, "shared_content_unshare_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 23681
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;

    move-result-object v0

    .line 23682
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentUnshareDetails(Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23684
    :cond_b3
    const-string/jumbo v3, "shared_content_view_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 23686
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;

    move-result-object v0

    .line 23687
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedContentViewDetails(Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23689
    :cond_b4
    const-string/jumbo v3, "shared_folder_change_confidentiality_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 23691
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;

    move-result-object v0

    .line 23692
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeConfidentialityDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23694
    :cond_b5
    const-string/jumbo v3, "shared_folder_change_link_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 23696
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;

    move-result-object v0

    .line 23697
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeLinkPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23699
    :cond_b6
    const-string/jumbo v3, "shared_folder_change_member_management_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 23701
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;

    move-result-object v0

    .line 23702
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeMemberManagementPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23704
    :cond_b7
    const-string/jumbo v3, "shared_folder_change_member_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 23706
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;

    move-result-object v0

    .line 23707
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderChangeMemberPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23709
    :cond_b8
    const-string/jumbo v3, "shared_folder_create_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 23711
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;

    move-result-object v0

    .line 23712
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderCreateDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23714
    :cond_b9
    const-string/jumbo v3, "shared_folder_mount_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 23716
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;

    move-result-object v0

    .line 23717
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderMountDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23719
    :cond_ba
    const-string/jumbo v3, "shared_folder_transfer_ownership_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 23721
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;

    move-result-object v0

    .line 23722
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderTransferOwnershipDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23724
    :cond_bb
    const-string/jumbo v3, "shared_folder_unmount_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 23726
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;

    move-result-object v0

    .line 23727
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedFolderUnmountDetails(Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23729
    :cond_bc
    const-string/jumbo v3, "shared_note_opened_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 23731
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;

    move-result-object v0

    .line 23732
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharedNoteOpenedDetails(Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23734
    :cond_bd
    const-string/jumbo v3, "shmodel_app_create_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 23736
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;

    move-result-object v0

    .line 23737
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelAppCreateDetails(Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23739
    :cond_be
    const-string/jumbo v3, "shmodel_create_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 23741
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails;

    move-result-object v0

    .line 23742
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelCreateDetails(Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23744
    :cond_bf
    const-string/jumbo v3, "shmodel_disable_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 23746
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelDisableDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelDisableDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelDisableDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelDisableDetails;

    move-result-object v0

    .line 23747
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelDisableDetails(Lcom/dropbox/core/v2/teamlog/ShmodelDisableDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23749
    :cond_c0
    const-string/jumbo v3, "shmodel_fb_share_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 23751
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelFbShareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelFbShareDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelFbShareDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelFbShareDetails;

    move-result-object v0

    .line 23752
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelFbShareDetails(Lcom/dropbox/core/v2/teamlog/ShmodelFbShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23754
    :cond_c1
    const-string/jumbo v3, "shmodel_group_share_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 23756
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;

    move-result-object v0

    .line 23757
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelGroupShareDetails(Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23759
    :cond_c2
    const-string/jumbo v3, "shmodel_remove_expiration_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 23761
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelRemoveExpirationDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelRemoveExpirationDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelRemoveExpirationDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelRemoveExpirationDetails;

    move-result-object v0

    .line 23762
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelRemoveExpirationDetails(Lcom/dropbox/core/v2/teamlog/ShmodelRemoveExpirationDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23764
    :cond_c3
    const-string/jumbo v3, "shmodel_set_expiration_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 23766
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelSetExpirationDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelSetExpirationDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelSetExpirationDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelSetExpirationDetails;

    move-result-object v0

    .line 23767
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelSetExpirationDetails(Lcom/dropbox/core/v2/teamlog/ShmodelSetExpirationDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23769
    :cond_c4
    const-string/jumbo v3, "shmodel_team_copy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 23771
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelTeamCopyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelTeamCopyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelTeamCopyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelTeamCopyDetails;

    move-result-object v0

    .line 23772
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelTeamCopyDetails(Lcom/dropbox/core/v2/teamlog/ShmodelTeamCopyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23774
    :cond_c5
    const-string/jumbo v3, "shmodel_team_download_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 23776
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelTeamDownloadDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelTeamDownloadDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelTeamDownloadDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelTeamDownloadDetails;

    move-result-object v0

    .line 23777
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelTeamDownloadDetails(Lcom/dropbox/core/v2/teamlog/ShmodelTeamDownloadDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23779
    :cond_c6
    const-string/jumbo v3, "shmodel_team_share_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 23781
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelTeamShareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelTeamShareDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelTeamShareDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelTeamShareDetails;

    move-result-object v0

    .line 23782
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelTeamShareDetails(Lcom/dropbox/core/v2/teamlog/ShmodelTeamShareDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23784
    :cond_c7
    const-string/jumbo v3, "shmodel_team_view_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 23786
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelTeamViewDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelTeamViewDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelTeamViewDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelTeamViewDetails;

    move-result-object v0

    .line 23787
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelTeamViewDetails(Lcom/dropbox/core/v2/teamlog/ShmodelTeamViewDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23789
    :cond_c8
    const-string/jumbo v3, "shmodel_visibility_password_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 23791
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPasswordDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPasswordDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPasswordDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPasswordDetails;

    move-result-object v0

    .line 23792
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelVisibilityPasswordDetails(Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPasswordDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23794
    :cond_c9
    const-string/jumbo v3, "shmodel_visibility_public_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 23796
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPublicDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPublicDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPublicDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPublicDetails;

    move-result-object v0

    .line 23797
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelVisibilityPublicDetails(Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPublicDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23799
    :cond_ca
    const-string/jumbo v3, "shmodel_visibility_team_only_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 23801
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityTeamOnlyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityTeamOnlyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityTeamOnlyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityTeamOnlyDetails;

    move-result-object v0

    .line 23802
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->shmodelVisibilityTeamOnlyDetails(Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityTeamOnlyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23804
    :cond_cb
    const-string/jumbo v3, "sso_add_cert_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 23806
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;

    move-result-object v0

    .line 23807
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoAddCertDetails(Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23809
    :cond_cc
    const-string/jumbo v3, "sso_add_login_url_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 23811
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;

    move-result-object v0

    .line 23812
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoAddLoginUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23814
    :cond_cd
    const-string/jumbo v3, "sso_add_logout_url_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 23816
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;

    move-result-object v0

    .line 23817
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoAddLogoutUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23819
    :cond_ce
    const-string/jumbo v3, "sso_change_cert_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 23821
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;

    move-result-object v0

    .line 23822
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeCertDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23824
    :cond_cf
    const-string/jumbo v3, "sso_change_login_url_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 23826
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;

    move-result-object v0

    .line 23827
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeLoginUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23829
    :cond_d0
    const-string/jumbo v3, "sso_change_logout_url_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    .line 23831
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;

    move-result-object v0

    .line 23832
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeLogoutUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23834
    :cond_d1
    const-string/jumbo v3, "sso_change_saml_identity_mode_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 23836
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;

    move-result-object v0

    .line 23837
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangeSamlIdentityModeDetails(Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23839
    :cond_d2
    const-string/jumbo v3, "sso_remove_cert_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 23841
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;

    move-result-object v0

    .line 23842
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoRemoveCertDetails(Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23844
    :cond_d3
    const-string/jumbo v3, "sso_remove_login_url_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 23846
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;

    move-result-object v0

    .line 23847
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoRemoveLoginUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23849
    :cond_d4
    const-string/jumbo v3, "sso_remove_logout_url_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d5

    .line 23851
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;

    move-result-object v0

    .line 23852
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoRemoveLogoutUrlDetails(Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23854
    :cond_d5
    const-string/jumbo v3, "team_folder_change_status_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 23856
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;

    move-result-object v0

    .line 23857
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23859
    :cond_d6
    const-string/jumbo v3, "team_folder_create_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 23861
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;

    move-result-object v0

    .line 23862
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderCreateDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23864
    :cond_d7
    const-string/jumbo v3, "team_folder_downgrade_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 23866
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;

    move-result-object v0

    .line 23867
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderDowngradeDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23869
    :cond_d8
    const-string/jumbo v3, "team_folder_permanently_delete_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d9

    .line 23871
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;

    move-result-object v0

    .line 23872
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderPermanentlyDeleteDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23874
    :cond_d9
    const-string/jumbo v3, "team_folder_rename_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 23876
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;

    move-result-object v0

    .line 23877
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamFolderRenameDetails(Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23879
    :cond_da
    const-string/jumbo v3, "account_capture_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 23881
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;

    move-result-object v0

    .line 23882
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->accountCaptureChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23884
    :cond_db
    const-string/jumbo v3, "allow_download_disabled_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 23886
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;

    move-result-object v0

    .line 23887
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->allowDownloadDisabledDetails(Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23889
    :cond_dc
    const-string/jumbo v3, "allow_download_enabled_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 23891
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;

    move-result-object v0

    .line 23892
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->allowDownloadEnabledDetails(Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23894
    :cond_dd
    const-string/jumbo v3, "data_placement_restriction_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    .line 23896
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;

    move-result-object v0

    .line 23897
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dataPlacementRestrictionChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23899
    :cond_de
    const-string/jumbo v3, "data_placement_restriction_satisfy_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_df

    .line 23901
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;

    move-result-object v0

    .line 23902
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->dataPlacementRestrictionSatisfyPolicyDetails(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23904
    :cond_df
    const-string/jumbo v3, "device_approvals_change_desktop_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 23906
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;

    move-result-object v0

    .line 23907
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeDesktopPolicyDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23909
    :cond_e0
    const-string/jumbo v3, "device_approvals_change_mobile_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 23911
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;

    move-result-object v0

    .line 23912
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeMobilePolicyDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23914
    :cond_e1
    const-string/jumbo v3, "device_approvals_change_overage_action_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 23916
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;

    move-result-object v0

    .line 23917
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeOverageActionDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23919
    :cond_e2
    const-string/jumbo v3, "device_approvals_change_unlink_action_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 23921
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;

    move-result-object v0

    .line 23922
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->deviceApprovalsChangeUnlinkActionDetails(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23924
    :cond_e3
    const-string/jumbo v3, "emm_add_exception_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 23926
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;

    move-result-object v0

    .line 23927
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmAddExceptionDetails(Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23929
    :cond_e4
    const-string/jumbo v3, "emm_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e5

    .line 23931
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;

    move-result-object v0

    .line 23932
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23934
    :cond_e5
    const-string/jumbo v3, "emm_remove_exception_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 23936
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;

    move-result-object v0

    .line 23937
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->emmRemoveExceptionDetails(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23939
    :cond_e6
    const-string/jumbo v3, "extended_version_history_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 23941
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;

    move-result-object v0

    .line 23942
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->extendedVersionHistoryChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23944
    :cond_e7
    const-string/jumbo v3, "file_comments_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e8

    .line 23946
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;

    move-result-object v0

    .line 23947
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileCommentsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23949
    :cond_e8
    const-string/jumbo v3, "file_requests_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 23951
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;

    move-result-object v0

    .line 23952
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23954
    :cond_e9
    const-string/jumbo v3, "file_requests_emails_enabled_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 23956
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;

    move-result-object v0

    .line 23957
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestsEmailsEnabledDetails(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23959
    :cond_ea
    const-string/jumbo v3, "file_requests_emails_restricted_to_team_only_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_eb

    .line 23961
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;

    move-result-object v0

    .line 23962
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->fileRequestsEmailsRestrictedToTeamOnlyDetails(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23964
    :cond_eb
    const-string/jumbo v3, "google_sso_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 23966
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;

    move-result-object v0

    .line 23967
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->googleSsoChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23969
    :cond_ec
    const-string/jumbo v3, "group_user_management_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    .line 23971
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;

    move-result-object v0

    .line 23972
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->groupUserManagementChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23974
    :cond_ed
    const-string/jumbo v3, "member_requests_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 23976
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;

    move-result-object v0

    .line 23977
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberRequestsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23979
    :cond_ee
    const-string/jumbo v3, "member_space_limits_add_exception_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 23981
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;

    move-result-object v0

    .line 23982
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsAddExceptionDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23984
    :cond_ef
    const-string/jumbo v3, "member_space_limits_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 23986
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;

    move-result-object v0

    .line 23987
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23989
    :cond_f0
    const-string/jumbo v3, "member_space_limits_remove_exception_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f1

    .line 23991
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;

    move-result-object v0

    .line 23992
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSpaceLimitsRemoveExceptionDetails(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23994
    :cond_f1
    const-string/jumbo v3, "member_suggestions_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 23996
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;

    move-result-object v0

    .line 23997
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->memberSuggestionsChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 23999
    :cond_f2
    const-string/jumbo v3, "microsoft_office_addin_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f3

    .line 24001
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;

    move-result-object v0

    .line 24002
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->microsoftOfficeAddinChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24004
    :cond_f3
    const-string/jumbo v3, "network_control_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 24006
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;

    move-result-object v0

    .line 24007
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->networkControlChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24009
    :cond_f4
    const-string/jumbo v3, "paper_change_deployment_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 24011
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;

    move-result-object v0

    .line 24012
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangeDeploymentPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24014
    :cond_f5
    const-string/jumbo v3, "paper_change_member_link_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 24016
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;

    move-result-object v0

    .line 24017
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangeMemberLinkPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24019
    :cond_f6
    const-string/jumbo v3, "paper_change_member_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 24021
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;

    move-result-object v0

    .line 24022
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangeMemberPolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24024
    :cond_f7
    const-string/jumbo v3, "paper_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 24026
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;

    move-result-object v0

    .line 24027
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->paperChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24029
    :cond_f8
    const-string/jumbo v3, "permanent_delete_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f9

    .line 24031
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;

    move-result-object v0

    .line 24032
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->permanentDeleteChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24034
    :cond_f9
    const-string/jumbo v3, "sharing_change_folder_join_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fa

    .line 24036
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;

    move-result-object v0

    .line 24037
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharingChangeFolderJoinPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24039
    :cond_fa
    const-string/jumbo v3, "sharing_change_link_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    .line 24041
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;

    move-result-object v0

    .line 24042
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharingChangeLinkPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24044
    :cond_fb
    const-string/jumbo v3, "sharing_change_member_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 24046
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;

    move-result-object v0

    .line 24047
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->sharingChangeMemberPolicyDetails(Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24049
    :cond_fc
    const-string/jumbo v3, "smart_sync_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 24051
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;

    move-result-object v0

    .line 24052
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24054
    :cond_fd
    const-string/jumbo v3, "smart_sync_not_opt_out_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 24056
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;

    move-result-object v0

    .line 24057
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncNotOptOutDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24059
    :cond_fe
    const-string/jumbo v3, "smart_sync_opt_out_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 24061
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;

    move-result-object v0

    .line 24062
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->smartSyncOptOutDetails(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24064
    :cond_ff
    const-string/jumbo v3, "sso_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_100

    .line 24066
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;

    move-result-object v0

    .line 24067
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->ssoChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24069
    :cond_100
    const-string/jumbo v3, "tfa_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_101

    .line 24071
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;

    move-result-object v0

    .line 24072
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24074
    :cond_101
    const-string/jumbo v3, "two_account_change_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 24076
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;

    move-result-object v0

    .line 24077
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->twoAccountChangePolicyDetails(Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24079
    :cond_102
    const-string/jumbo v3, "web_sessions_change_fixed_length_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 24081
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;

    move-result-object v0

    .line 24082
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->webSessionsChangeFixedLengthPolicyDetails(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24084
    :cond_103
    const-string/jumbo v3, "web_sessions_change_idle_length_policy_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    .line 24086
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;

    move-result-object v0

    .line 24087
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->webSessionsChangeIdleLengthPolicyDetails(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24089
    :cond_104
    const-string/jumbo v3, "team_profile_add_logo_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_105

    .line 24091
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;

    move-result-object v0

    .line 24092
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileAddLogoDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24094
    :cond_105
    const-string/jumbo v3, "team_profile_change_default_language_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_106

    .line 24096
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;

    move-result-object v0

    .line 24097
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileChangeDefaultLanguageDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24099
    :cond_106
    const-string/jumbo v3, "team_profile_change_logo_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 24101
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;

    move-result-object v0

    .line 24102
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileChangeLogoDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24104
    :cond_107
    const-string/jumbo v3, "team_profile_change_name_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_108

    .line 24106
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;

    move-result-object v0

    .line 24107
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileChangeNameDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24109
    :cond_108
    const-string/jumbo v3, "team_profile_remove_logo_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_109

    .line 24111
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;

    move-result-object v0

    .line 24112
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->teamProfileRemoveLogoDetails(Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24114
    :cond_109
    const-string/jumbo v3, "tfa_add_backup_phone_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 24116
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;

    move-result-object v0

    .line 24117
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaAddBackupPhoneDetails(Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24119
    :cond_10a
    const-string/jumbo v3, "tfa_add_security_key_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 24121
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;

    move-result-object v0

    .line 24122
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaAddSecurityKeyDetails(Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24124
    :cond_10b
    const-string/jumbo v3, "tfa_change_backup_phone_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 24126
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;

    move-result-object v0

    .line 24127
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaChangeBackupPhoneDetails(Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24129
    :cond_10c
    const-string/jumbo v3, "tfa_change_status_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 24131
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    move-result-object v0

    .line 24132
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaChangeStatusDetails(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24134
    :cond_10d
    const-string/jumbo v3, "tfa_remove_backup_phone_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 24136
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;

    move-result-object v0

    .line 24137
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaRemoveBackupPhoneDetails(Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24139
    :cond_10e
    const-string/jumbo v3, "tfa_remove_security_key_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 24141
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;

    move-result-object v0

    .line 24142
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaRemoveSecurityKeyDetails(Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24144
    :cond_10f
    const-string/jumbo v3, "tfa_reset_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 24146
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaResetDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/TfaResetDetails;

    move-result-object v0

    .line 24147
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tfaResetDetails(Lcom/dropbox/core/v2/teamlog/TfaResetDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24149
    :cond_110
    const-string/jumbo v3, "missing_details"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 24151
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MissingDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MissingDetails$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/MissingDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/MissingDetails;

    move-result-object v0

    .line 24152
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/EventDetails;->missingDetails(Lcom/dropbox/core/v2/teamlog/MissingDetails;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    goto/16 :goto_1

    .line 24155
    :cond_111
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails;->OTHER:Lcom/dropbox/core/v2/teamlog/EventDetails;

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
    .line 20872
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/EventDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 20877
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventDetails$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventDetails$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->tag()Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/EventDetails$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 22776
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 22779
    :goto_0
    return-void

    .line 20879
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20880
    const-string/jumbo v0, "member_change_membership_type_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20881
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeMembershipTypeDetails;Lcom/d/a/a/g;Z)V

    .line 20882
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 20886
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20887
    const-string/jumbo v0, "member_permanently_delete_account_contents_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20888
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberPermanentlyDeleteAccountContentsDetails;Lcom/d/a/a/g;Z)V

    .line 20889
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 20893
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20894
    const-string/jumbo v0, "member_space_limits_change_status_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20895
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangeStatusDetails;Lcom/d/a/a/g;Z)V

    .line 20896
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 20900
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20901
    const-string/jumbo v0, "member_transfer_account_contents_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20902
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;Lcom/d/a/a/g;Z)V

    .line 20903
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 20907
    :pswitch_4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20908
    const-string/jumbo v0, "paper_admin_export_start_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20909
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperAdminExportStartDetails;Lcom/d/a/a/g;Z)V

    .line 20910
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 20914
    :pswitch_5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20915
    const-string/jumbo v0, "paper_enabled_users_group_addition_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20916
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupAdditionDetails;Lcom/d/a/a/g;Z)V

    .line 20917
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20921
    :pswitch_6
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20922
    const-string/jumbo v0, "paper_enabled_users_group_removal_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20923
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperEnabledUsersGroupRemovalDetails;Lcom/d/a/a/g;Z)V

    .line 20924
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20928
    :pswitch_7
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20929
    const-string/jumbo v0, "paper_external_view_allow_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20930
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperExternalViewAllowDetails;Lcom/d/a/a/g;Z)V

    .line 20931
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20935
    :pswitch_8
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20936
    const-string/jumbo v0, "paper_external_view_default_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20937
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperExternalViewDefaultTeamDetails;Lcom/d/a/a/g;Z)V

    .line 20938
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20942
    :pswitch_9
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20943
    const-string/jumbo v0, "paper_external_view_forbid_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20944
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperExternalViewForbidDetails;Lcom/d/a/a/g;Z)V

    .line 20945
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20949
    :pswitch_a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20950
    const-string/jumbo v0, "sf_external_invite_warn_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20951
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$1000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfExternalInviteWarnDetails;Lcom/d/a/a/g;Z)V

    .line 20952
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20956
    :pswitch_b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20957
    const-string/jumbo v0, "team_merge_from_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20958
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$1100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamMergeFromDetails;Lcom/d/a/a/g;Z)V

    .line 20959
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20963
    :pswitch_c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20964
    const-string/jumbo v0, "team_merge_to_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20965
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$1200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamMergeToDetails;Lcom/d/a/a/g;Z)V

    .line 20966
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20970
    :pswitch_d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20971
    const-string/jumbo v0, "app_link_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20972
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$1300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AppLinkTeamDetails;Lcom/d/a/a/g;Z)V

    .line 20973
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20977
    :pswitch_e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20978
    const-string/jumbo v0, "app_link_user_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20979
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$1400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AppLinkUserDetails;Lcom/d/a/a/g;Z)V

    .line 20980
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20984
    :pswitch_f
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20985
    const-string/jumbo v0, "app_unlink_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20986
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$1500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AppUnlinkTeamDetails;Lcom/d/a/a/g;Z)V

    .line 20987
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20991
    :pswitch_10
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20992
    const-string/jumbo v0, "app_unlink_user_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 20993
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$1600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;Lcom/d/a/a/g;Z)V

    .line 20994
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20998
    :pswitch_11
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 20999
    const-string/jumbo v0, "file_add_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21000
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$1700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileAddCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21001
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21005
    :pswitch_12
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21006
    const-string/jumbo v0, "file_change_comment_subscription_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21007
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$1800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;Lcom/d/a/a/g;Z)V

    .line 21008
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21012
    :pswitch_13
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21013
    const-string/jumbo v0, "file_delete_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21014
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$1900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileDeleteCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21015
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21019
    :pswitch_14
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21020
    const-string/jumbo v0, "file_like_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21021
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$2000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileLikeCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21022
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21026
    :pswitch_15
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21027
    const-string/jumbo v0, "file_resolve_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21028
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$2100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileResolveCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21029
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21033
    :pswitch_16
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21034
    const-string/jumbo v0, "file_unlike_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21035
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$2200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileUnlikeCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21036
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21040
    :pswitch_17
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21041
    const-string/jumbo v0, "file_unresolve_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21042
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$2300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileUnresolveCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21043
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21047
    :pswitch_18
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21048
    const-string/jumbo v0, "device_change_ip_desktop_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21049
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$2400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpDesktopDetails;Lcom/d/a/a/g;Z)V

    .line 21050
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21054
    :pswitch_19
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21055
    const-string/jumbo v0, "device_change_ip_mobile_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21056
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$2500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpMobileDetails;Lcom/d/a/a/g;Z)V

    .line 21057
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21061
    :pswitch_1a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21062
    const-string/jumbo v0, "device_change_ip_web_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21063
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$2600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceChangeIpWebDetails;Lcom/d/a/a/g;Z)V

    .line 21064
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21068
    :pswitch_1b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21069
    const-string/jumbo v0, "device_delete_on_unlink_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21070
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$2700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkFailDetails;Lcom/d/a/a/g;Z)V

    .line 21071
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21075
    :pswitch_1c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21076
    const-string/jumbo v0, "device_delete_on_unlink_success_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21077
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$2800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceDeleteOnUnlinkSuccessDetails;Lcom/d/a/a/g;Z)V

    .line 21078
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21082
    :pswitch_1d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21083
    const-string/jumbo v0, "device_link_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21084
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$2900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;Lcom/d/a/a/g;Z)V

    .line 21085
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21089
    :pswitch_1e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21090
    const-string/jumbo v0, "device_link_success_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21091
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$3000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceLinkSuccessDetails;Lcom/d/a/a/g;Z)V

    .line 21092
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21096
    :pswitch_1f
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21097
    const-string/jumbo v0, "device_management_disabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21098
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$3100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceManagementDisabledDetails;Lcom/d/a/a/g;Z)V

    .line 21099
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21103
    :pswitch_20
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21104
    const-string/jumbo v0, "device_management_enabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21105
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$3200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceManagementEnabledDetails;Lcom/d/a/a/g;Z)V

    .line 21106
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21110
    :pswitch_21
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21111
    const-string/jumbo v0, "device_unlink_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21112
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$3300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceUnlinkDetails;Lcom/d/a/a/g;Z)V

    .line 21113
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21117
    :pswitch_22
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21118
    const-string/jumbo v0, "emm_refresh_auth_token_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21119
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$3400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EmmRefreshAuthTokenDetails;Lcom/d/a/a/g;Z)V

    .line 21120
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21124
    :pswitch_23
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21125
    const-string/jumbo v0, "account_capture_change_availability_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21126
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$3500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangeAvailabilityDetails;Lcom/d/a/a/g;Z)V

    .line 21127
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21131
    :pswitch_24
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21132
    const-string/jumbo v0, "account_capture_migrate_account_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21133
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$3600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AccountCaptureMigrateAccountDetails;Lcom/d/a/a/g;Z)V

    .line 21134
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21138
    :pswitch_25
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21139
    const-string/jumbo v0, "account_capture_relinquish_account_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21140
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$3700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AccountCaptureRelinquishAccountDetails;Lcom/d/a/a/g;Z)V

    .line 21141
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21145
    :pswitch_26
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21146
    const-string/jumbo v0, "disabled_domain_invites_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21147
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$3800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DisabledDomainInvitesDetails;Lcom/d/a/a/g;Z)V

    .line 21148
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21152
    :pswitch_27
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21153
    const-string/jumbo v0, "domain_invites_approve_request_to_join_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21154
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$3900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DomainInvitesApproveRequestToJoinTeamDetails;Lcom/d/a/a/g;Z)V

    .line 21155
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21159
    :pswitch_28
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21160
    const-string/jumbo v0, "domain_invites_decline_request_to_join_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21161
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$4000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DomainInvitesDeclineRequestToJoinTeamDetails;Lcom/d/a/a/g;Z)V

    .line 21162
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21166
    :pswitch_29
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21167
    const-string/jumbo v0, "domain_invites_email_existing_users_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21168
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$4100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;Lcom/d/a/a/g;Z)V

    .line 21169
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21173
    :pswitch_2a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21174
    const-string/jumbo v0, "domain_invites_request_to_join_team_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21175
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$4200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DomainInvitesRequestToJoinTeamDetails;Lcom/d/a/a/g;Z)V

    .line 21176
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21180
    :pswitch_2b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21181
    const-string/jumbo v0, "domain_invites_set_invite_new_user_pref_to_no_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21182
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$4300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToNoDetails;Lcom/d/a/a/g;Z)V

    .line 21183
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21187
    :pswitch_2c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21188
    const-string/jumbo v0, "domain_invites_set_invite_new_user_pref_to_yes_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21189
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$4400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DomainInvitesSetInviteNewUserPrefToYesDetails;Lcom/d/a/a/g;Z)V

    .line 21190
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21194
    :pswitch_2d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21195
    const-string/jumbo v0, "domain_verification_add_domain_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21196
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$4500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainFailDetails;Lcom/d/a/a/g;Z)V

    .line 21197
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21201
    :pswitch_2e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21202
    const-string/jumbo v0, "domain_verification_add_domain_success_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21203
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$4600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DomainVerificationAddDomainSuccessDetails;Lcom/d/a/a/g;Z)V

    .line 21204
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21208
    :pswitch_2f
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21209
    const-string/jumbo v0, "domain_verification_remove_domain_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21210
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$4700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DomainVerificationRemoveDomainDetails;Lcom/d/a/a/g;Z)V

    .line 21211
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21215
    :pswitch_30
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21216
    const-string/jumbo v0, "enabled_domain_invites_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21217
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$4800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EnabledDomainInvitesDetails;Lcom/d/a/a/g;Z)V

    .line 21218
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21222
    :pswitch_31
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21223
    const-string/jumbo v0, "create_folder_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21224
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$4900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/CreateFolderDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/CreateFolderDetails;Lcom/d/a/a/g;Z)V

    .line 21225
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21229
    :pswitch_32
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21230
    const-string/jumbo v0, "file_add_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21231
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileAddDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileAddDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$5000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileAddDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileAddDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileAddDetails;Lcom/d/a/a/g;Z)V

    .line 21232
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21236
    :pswitch_33
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21237
    const-string/jumbo v0, "file_copy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21238
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileCopyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$5100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileCopyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileCopyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileCopyDetails;Lcom/d/a/a/g;Z)V

    .line 21239
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21243
    :pswitch_34
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21244
    const-string/jumbo v0, "file_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21245
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$5200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileDeleteDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileDeleteDetails;Lcom/d/a/a/g;Z)V

    .line 21246
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21250
    :pswitch_35
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21251
    const-string/jumbo v0, "file_download_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21252
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$5300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileDownloadDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileDownloadDetails;Lcom/d/a/a/g;Z)V

    .line 21253
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21257
    :pswitch_36
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21258
    const-string/jumbo v0, "file_edit_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21259
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileEditDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileEditDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$5400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileEditDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileEditDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileEditDetails;Lcom/d/a/a/g;Z)V

    .line 21260
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21264
    :pswitch_37
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21265
    const-string/jumbo v0, "file_get_copy_reference_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21266
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$5500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileGetCopyReferenceDetails;Lcom/d/a/a/g;Z)V

    .line 21267
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21271
    :pswitch_38
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21272
    const-string/jumbo v0, "file_move_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21273
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileMoveDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$5600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileMoveDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileMoveDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileMoveDetails;Lcom/d/a/a/g;Z)V

    .line 21274
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21278
    :pswitch_39
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21279
    const-string/jumbo v0, "file_permanently_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21280
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$5700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FilePermanentlyDeleteDetails;Lcom/d/a/a/g;Z)V

    .line 21281
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21285
    :pswitch_3a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21286
    const-string/jumbo v0, "file_preview_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21287
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$5800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FilePreviewDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FilePreviewDetails;Lcom/d/a/a/g;Z)V

    .line 21288
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21292
    :pswitch_3b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21293
    const-string/jumbo v0, "file_rename_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21294
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$5900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRenameDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRenameDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRenameDetails;Lcom/d/a/a/g;Z)V

    .line 21295
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21299
    :pswitch_3c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21300
    const-string/jumbo v0, "file_restore_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21301
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$6000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRestoreDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRestoreDetails;Lcom/d/a/a/g;Z)V

    .line 21302
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21306
    :pswitch_3d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21307
    const-string/jumbo v0, "file_revert_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21308
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRevertDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$6100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRevertDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRevertDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRevertDetails;Lcom/d/a/a/g;Z)V

    .line 21309
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21313
    :pswitch_3e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21314
    const-string/jumbo v0, "file_rollback_changes_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21315
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$6200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRollbackChangesDetails;Lcom/d/a/a/g;Z)V

    .line 21316
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21320
    :pswitch_3f
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21321
    const-string/jumbo v0, "file_save_copy_reference_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21322
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$6300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;Lcom/d/a/a/g;Z)V

    .line 21323
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21327
    :pswitch_40
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21328
    const-string/jumbo v0, "file_request_add_deadline_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21329
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestAddDeadlineDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestAddDeadlineDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$6400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestAddDeadlineDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestAddDeadlineDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestAddDeadlineDetails;Lcom/d/a/a/g;Z)V

    .line 21330
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21334
    :pswitch_41
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21335
    const-string/jumbo v0, "file_request_change_folder_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21336
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestChangeFolderDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$6500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestChangeFolderDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeFolderDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestChangeFolderDetails;Lcom/d/a/a/g;Z)V

    .line 21337
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21341
    :pswitch_42
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21342
    const-string/jumbo v0, "file_request_change_title_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21343
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestChangeTitleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestChangeTitleDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$6600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestChangeTitleDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestChangeTitleDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestChangeTitleDetails;Lcom/d/a/a/g;Z)V

    .line 21344
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21348
    :pswitch_43
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21349
    const-string/jumbo v0, "file_request_close_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21350
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$6700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestCloseDetails;Lcom/d/a/a/g;Z)V

    .line 21351
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21355
    :pswitch_44
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21356
    const-string/jumbo v0, "file_request_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21357
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$6800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestCreateDetails;Lcom/d/a/a/g;Z)V

    .line 21358
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21362
    :pswitch_45
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21363
    const-string/jumbo v0, "file_request_receive_file_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21364
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$6900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestReceiveFileDetails;Lcom/d/a/a/g;Z)V

    .line 21365
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21369
    :pswitch_46
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21370
    const-string/jumbo v0, "file_request_remove_deadline_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21371
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$7000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;Lcom/d/a/a/g;Z)V

    .line 21372
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21376
    :pswitch_47
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21377
    const-string/jumbo v0, "file_request_send_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21378
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestSendDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestSendDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$7100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestSendDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestSendDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestSendDetails;Lcom/d/a/a/g;Z)V

    .line 21379
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21383
    :pswitch_48
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21384
    const-string/jumbo v0, "group_add_external_id_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21385
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$7200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupAddExternalIdDetails;Lcom/d/a/a/g;Z)V

    .line 21386
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21390
    :pswitch_49
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21391
    const-string/jumbo v0, "group_add_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21392
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$7300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;Lcom/d/a/a/g;Z)V

    .line 21393
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21397
    :pswitch_4a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21398
    const-string/jumbo v0, "group_change_external_id_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21399
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$7400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;Lcom/d/a/a/g;Z)V

    .line 21400
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21404
    :pswitch_4b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21405
    const-string/jumbo v0, "group_change_management_type_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21406
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$7500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupChangeManagementTypeDetails;Lcom/d/a/a/g;Z)V

    .line 21407
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21411
    :pswitch_4c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21412
    const-string/jumbo v0, "group_change_member_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21413
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$7600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupChangeMemberRoleDetails;Lcom/d/a/a/g;Z)V

    .line 21414
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21418
    :pswitch_4d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21419
    const-string/jumbo v0, "group_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21420
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$7700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupCreateDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupCreateDetails;Lcom/d/a/a/g;Z)V

    .line 21421
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21425
    :pswitch_4e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21426
    const-string/jumbo v0, "group_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21427
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$7800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupDeleteDetails;Lcom/d/a/a/g;Z)V

    .line 21428
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21432
    :pswitch_4f
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21433
    const-string/jumbo v0, "group_moved_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21434
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$7900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupMovedDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupMovedDetails;Lcom/d/a/a/g;Z)V

    .line 21435
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21439
    :pswitch_50
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21440
    const-string/jumbo v0, "group_remove_external_id_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21441
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$8000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupRemoveExternalIdDetails;Lcom/d/a/a/g;Z)V

    .line 21442
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21446
    :pswitch_51
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21447
    const-string/jumbo v0, "group_remove_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21448
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$8100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupRemoveMemberDetails;Lcom/d/a/a/g;Z)V

    .line 21449
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21453
    :pswitch_52
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21454
    const-string/jumbo v0, "group_rename_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21455
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$8200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupRenameDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupRenameDetails;Lcom/d/a/a/g;Z)V

    .line 21456
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21460
    :pswitch_53
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21461
    const-string/jumbo v0, "emm_login_success_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21462
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmLoginSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmLoginSuccessDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$8300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmLoginSuccessDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/EmmLoginSuccessDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EmmLoginSuccessDetails;Lcom/d/a/a/g;Z)V

    .line 21463
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21467
    :pswitch_54
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21468
    const-string/jumbo v0, "logout_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21469
    sget-object v0, Lcom/dropbox/core/v2/teamlog/LogoutDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/LogoutDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$8400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/LogoutDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/LogoutDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/LogoutDetails;Lcom/d/a/a/g;Z)V

    .line 21470
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21474
    :pswitch_55
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21475
    const-string/jumbo v0, "password_login_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21476
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordLoginFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PasswordLoginFailDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$8500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordLoginFailDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PasswordLoginFailDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PasswordLoginFailDetails;Lcom/d/a/a/g;Z)V

    .line 21477
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21481
    :pswitch_56
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21482
    const-string/jumbo v0, "password_login_success_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21483
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordLoginSuccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PasswordLoginSuccessDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$8600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordLoginSuccessDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PasswordLoginSuccessDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PasswordLoginSuccessDetails;Lcom/d/a/a/g;Z)V

    .line 21484
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21488
    :pswitch_57
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21489
    const-string/jumbo v0, "reseller_support_session_end_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21490
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$8700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionEndDetails;Lcom/d/a/a/g;Z)V

    .line 21491
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21495
    :pswitch_58
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21496
    const-string/jumbo v0, "reseller_support_session_start_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21497
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$8800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ResellerSupportSessionStartDetails;Lcom/d/a/a/g;Z)V

    .line 21498
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21502
    :pswitch_59
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21503
    const-string/jumbo v0, "sign_in_as_session_end_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21504
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$8900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SignInAsSessionEndDetails;Lcom/d/a/a/g;Z)V

    .line 21505
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21509
    :pswitch_5a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21510
    const-string/jumbo v0, "sign_in_as_session_start_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21511
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$9000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SignInAsSessionStartDetails;Lcom/d/a/a/g;Z)V

    .line 21512
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21516
    :pswitch_5b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21517
    const-string/jumbo v0, "sso_login_fail_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21518
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoLoginFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoLoginFailDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$9100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoLoginFailDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoLoginFailDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoLoginFailDetails;Lcom/d/a/a/g;Z)V

    .line 21519
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21523
    :pswitch_5c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21524
    const-string/jumbo v0, "member_add_name_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21525
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$9200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberAddNameDetails;Lcom/d/a/a/g;Z)V

    .line 21526
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21530
    :pswitch_5d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21531
    const-string/jumbo v0, "member_change_admin_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21532
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$9300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;Lcom/d/a/a/g;Z)V

    .line 21533
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21537
    :pswitch_5e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21538
    const-string/jumbo v0, "member_change_email_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21539
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$9400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeEmailDetails;Lcom/d/a/a/g;Z)V

    .line 21540
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21544
    :pswitch_5f
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21545
    const-string/jumbo v0, "member_change_name_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21546
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$9500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeNameDetails;Lcom/d/a/a/g;Z)V

    .line 21547
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21551
    :pswitch_60
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21552
    const-string/jumbo v0, "member_change_status_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21553
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$9600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberChangeStatusDetails;Lcom/d/a/a/g;Z)V

    .line 21554
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21558
    :pswitch_61
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21559
    const-string/jumbo v0, "member_suggest_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21560
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$9700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberSuggestDetails;Lcom/d/a/a/g;Z)V

    .line 21561
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21565
    :pswitch_62
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21566
    const-string/jumbo v0, "paper_content_add_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21567
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$9800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperContentAddMemberDetails;Lcom/d/a/a/g;Z)V

    .line 21568
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21572
    :pswitch_63
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21573
    const-string/jumbo v0, "paper_content_add_to_folder_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21574
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$9900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;Lcom/d/a/a/g;Z)V

    .line 21575
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21579
    :pswitch_64
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21580
    const-string/jumbo v0, "paper_content_archive_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21581
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$10000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperContentArchiveDetails;Lcom/d/a/a/g;Z)V

    .line 21582
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21586
    :pswitch_65
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21587
    const-string/jumbo v0, "paper_content_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21588
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$10100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperContentCreateDetails;Lcom/d/a/a/g;Z)V

    .line 21589
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21593
    :pswitch_66
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21594
    const-string/jumbo v0, "paper_content_permanently_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21595
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$10200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperContentPermanentlyDeleteDetails;Lcom/d/a/a/g;Z)V

    .line 21596
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21600
    :pswitch_67
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21601
    const-string/jumbo v0, "paper_content_remove_from_folder_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21602
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$10300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveFromFolderDetails;Lcom/d/a/a/g;Z)V

    .line 21603
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21607
    :pswitch_68
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21608
    const-string/jumbo v0, "paper_content_remove_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21609
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$10400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperContentRemoveMemberDetails;Lcom/d/a/a/g;Z)V

    .line 21610
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21614
    :pswitch_69
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21615
    const-string/jumbo v0, "paper_content_rename_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21616
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$10500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperContentRenameDetails;Lcom/d/a/a/g;Z)V

    .line 21617
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21621
    :pswitch_6a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21622
    const-string/jumbo v0, "paper_content_restore_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21623
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$10600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperContentRestoreDetails;Lcom/d/a/a/g;Z)V

    .line 21624
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21628
    :pswitch_6b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21629
    const-string/jumbo v0, "paper_doc_add_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21630
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$10700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocAddCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21631
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21635
    :pswitch_6c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21636
    const-string/jumbo v0, "paper_doc_change_member_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21637
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$10800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocChangeMemberRoleDetails;Lcom/d/a/a/g;Z)V

    .line 21638
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21642
    :pswitch_6d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21643
    const-string/jumbo v0, "paper_doc_change_sharing_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21644
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$10900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSharingPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 21645
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21649
    :pswitch_6e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21650
    const-string/jumbo v0, "paper_doc_change_subscription_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21651
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$11000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocChangeSubscriptionDetails;Lcom/d/a/a/g;Z)V

    .line 21652
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21656
    :pswitch_6f
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21657
    const-string/jumbo v0, "paper_doc_deleted_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21658
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$11100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocDeletedDetails;Lcom/d/a/a/g;Z)V

    .line 21659
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21663
    :pswitch_70
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21664
    const-string/jumbo v0, "paper_doc_delete_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21665
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$11200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocDeleteCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21666
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21670
    :pswitch_71
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21671
    const-string/jumbo v0, "paper_doc_download_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21672
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$11300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocDownloadDetails;Lcom/d/a/a/g;Z)V

    .line 21673
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21677
    :pswitch_72
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21678
    const-string/jumbo v0, "paper_doc_edit_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21679
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$11400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocEditDetails;Lcom/d/a/a/g;Z)V

    .line 21680
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21684
    :pswitch_73
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21685
    const-string/jumbo v0, "paper_doc_edit_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21686
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$11500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocEditCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21687
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21691
    :pswitch_74
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21692
    const-string/jumbo v0, "paper_doc_followed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21693
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$11600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocFollowedDetails;Lcom/d/a/a/g;Z)V

    .line 21694
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21698
    :pswitch_75
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21699
    const-string/jumbo v0, "paper_doc_mention_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21700
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$11700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocMentionDetails;Lcom/d/a/a/g;Z)V

    .line 21701
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21705
    :pswitch_76
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21706
    const-string/jumbo v0, "paper_doc_request_access_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21707
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$11800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocRequestAccessDetails;Lcom/d/a/a/g;Z)V

    .line 21708
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21712
    :pswitch_77
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21713
    const-string/jumbo v0, "paper_doc_resolve_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21714
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$11900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocResolveCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21715
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21719
    :pswitch_78
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21720
    const-string/jumbo v0, "paper_doc_revert_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21721
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$12000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocRevertDetails;Lcom/d/a/a/g;Z)V

    .line 21722
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21726
    :pswitch_79
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21727
    const-string/jumbo v0, "paper_doc_slack_share_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21728
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$12100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocSlackShareDetails;Lcom/d/a/a/g;Z)V

    .line 21729
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21733
    :pswitch_7a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21734
    const-string/jumbo v0, "paper_doc_team_invite_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21735
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$12200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocTeamInviteDetails;Lcom/d/a/a/g;Z)V

    .line 21736
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21740
    :pswitch_7b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21741
    const-string/jumbo v0, "paper_doc_trashed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21742
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$12300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocTrashedDetails;Lcom/d/a/a/g;Z)V

    .line 21743
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21747
    :pswitch_7c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21748
    const-string/jumbo v0, "paper_doc_unresolve_comment_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21749
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$12400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocUnresolveCommentDetails;Lcom/d/a/a/g;Z)V

    .line 21750
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21754
    :pswitch_7d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21755
    const-string/jumbo v0, "paper_doc_untrashed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21756
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$12500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocUntrashedDetails;Lcom/d/a/a/g;Z)V

    .line 21757
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21761
    :pswitch_7e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21762
    const-string/jumbo v0, "paper_doc_view_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21763
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$12600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperDocViewDetails;Lcom/d/a/a/g;Z)V

    .line 21764
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21768
    :pswitch_7f
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21769
    const-string/jumbo v0, "paper_folder_change_subscription_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21770
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$12700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperFolderChangeSubscriptionDetails;Lcom/d/a/a/g;Z)V

    .line 21771
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21775
    :pswitch_80
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21776
    const-string/jumbo v0, "paper_folder_deleted_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21777
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$12800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperFolderDeletedDetails;Lcom/d/a/a/g;Z)V

    .line 21778
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21782
    :pswitch_81
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21783
    const-string/jumbo v0, "paper_folder_followed_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21784
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$12900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperFolderFollowedDetails;Lcom/d/a/a/g;Z)V

    .line 21785
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21789
    :pswitch_82
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21790
    const-string/jumbo v0, "paper_folder_team_invite_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21791
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$13000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperFolderTeamInviteDetails;Lcom/d/a/a/g;Z)V

    .line 21792
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21796
    :pswitch_83
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21797
    const-string/jumbo v0, "password_change_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21798
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$13100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PasswordChangeDetails;Lcom/d/a/a/g;Z)V

    .line 21799
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21803
    :pswitch_84
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21804
    const-string/jumbo v0, "password_reset_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21805
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$13200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PasswordResetDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PasswordResetDetails;Lcom/d/a/a/g;Z)V

    .line 21806
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21810
    :pswitch_85
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21811
    const-string/jumbo v0, "password_reset_all_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21812
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$13300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PasswordResetAllDetails;Lcom/d/a/a/g;Z)V

    .line 21813
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21817
    :pswitch_86
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21818
    const-string/jumbo v0, "emm_create_exceptions_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21819
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$13400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EmmCreateExceptionsReportDetails;Lcom/d/a/a/g;Z)V

    .line 21820
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21824
    :pswitch_87
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21825
    const-string/jumbo v0, "emm_create_usage_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21826
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$13500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EmmCreateUsageReportDetails;Lcom/d/a/a/g;Z)V

    .line 21827
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21831
    :pswitch_88
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21832
    const-string/jumbo v0, "smart_sync_create_admin_privilege_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21833
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$13600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SmartSyncCreateAdminPrivilegeReportDetails;Lcom/d/a/a/g;Z)V

    .line 21834
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21838
    :pswitch_89
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21839
    const-string/jumbo v0, "team_activity_create_report_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21840
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$13700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamActivityCreateReportDetails;Lcom/d/a/a/g;Z)V

    .line 21841
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21845
    :pswitch_8a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21846
    const-string/jumbo v0, "collection_share_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21847
    sget-object v0, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$13800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/CollectionShareDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/CollectionShareDetails;Lcom/d/a/a/g;Z)V

    .line 21848
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21852
    :pswitch_8b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21853
    const-string/jumbo v0, "note_acl_invite_only_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21854
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$13900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/NoteAclInviteOnlyDetails;Lcom/d/a/a/g;Z)V

    .line 21855
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21859
    :pswitch_8c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21860
    const-string/jumbo v0, "note_acl_link_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21861
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$14000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/NoteAclLinkDetails;Lcom/d/a/a/g;Z)V

    .line 21862
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21866
    :pswitch_8d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21867
    const-string/jumbo v0, "note_acl_team_link_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21868
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$14100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/NoteAclTeamLinkDetails;Lcom/d/a/a/g;Z)V

    .line 21869
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21873
    :pswitch_8e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21874
    const-string/jumbo v0, "note_shared_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21875
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$14200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/NoteSharedDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/NoteSharedDetails;Lcom/d/a/a/g;Z)V

    .line 21876
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21880
    :pswitch_8f
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21881
    const-string/jumbo v0, "note_share_receive_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21882
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$14300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/NoteShareReceiveDetails;Lcom/d/a/a/g;Z)V

    .line 21883
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21887
    :pswitch_90
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21888
    const-string/jumbo v0, "open_note_shared_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21889
    sget-object v0, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$14400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/OpenNoteSharedDetails;Lcom/d/a/a/g;Z)V

    .line 21890
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21894
    :pswitch_91
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21895
    const-string/jumbo v0, "sf_add_group_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21896
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$14500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfAddGroupDetails;Lcom/d/a/a/g;Z)V

    .line 21897
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21901
    :pswitch_92
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21902
    const-string/jumbo v0, "sf_allow_non_members_to_view_shared_links_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21903
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$14600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfAllowNonMembersToViewSharedLinksDetails;Lcom/d/a/a/g;Z)V

    .line 21904
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21908
    :pswitch_93
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21909
    const-string/jumbo v0, "sf_invite_group_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21910
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$14700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfInviteGroupDetails;Lcom/d/a/a/g;Z)V

    .line 21911
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21915
    :pswitch_94
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21916
    const-string/jumbo v0, "sf_nest_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21917
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$14800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfNestDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfNestDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfNestDetails;Lcom/d/a/a/g;Z)V

    .line 21918
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21922
    :pswitch_95
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21923
    const-string/jumbo v0, "sf_team_decline_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21924
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamDeclineDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamDeclineDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$14900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamDeclineDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamDeclineDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfTeamDeclineDetails;Lcom/d/a/a/g;Z)V

    .line 21925
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21929
    :pswitch_96
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21930
    const-string/jumbo v0, "sf_team_grant_access_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21931
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$15000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfTeamGrantAccessDetails;Lcom/d/a/a/g;Z)V

    .line 21932
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21936
    :pswitch_97
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21937
    const-string/jumbo v0, "sf_team_invite_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21938
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$15100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfTeamInviteDetails;Lcom/d/a/a/g;Z)V

    .line 21939
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21943
    :pswitch_98
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21944
    const-string/jumbo v0, "sf_team_invite_change_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21945
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$15200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;Lcom/d/a/a/g;Z)V

    .line 21946
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21950
    :pswitch_99
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21951
    const-string/jumbo v0, "sf_team_join_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21952
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$15300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfTeamJoinDetails;Lcom/d/a/a/g;Z)V

    .line 21953
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21957
    :pswitch_9a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21958
    const-string/jumbo v0, "sf_team_join_from_oob_link_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21959
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$15400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;Lcom/d/a/a/g;Z)V

    .line 21960
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21964
    :pswitch_9b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21965
    const-string/jumbo v0, "sf_team_uninvite_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21966
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$15500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SfTeamUninviteDetails;Lcom/d/a/a/g;Z)V

    .line 21967
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21971
    :pswitch_9c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21972
    const-string/jumbo v0, "shared_content_add_invitees_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21973
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$15600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentAddInviteesDetails;Lcom/d/a/a/g;Z)V

    .line 21974
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21978
    :pswitch_9d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21979
    const-string/jumbo v0, "shared_content_add_link_expiry_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21980
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$15700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkExpiryDetails;Lcom/d/a/a/g;Z)V

    .line 21981
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21985
    :pswitch_9e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21986
    const-string/jumbo v0, "shared_content_add_link_password_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21987
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$15800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentAddLinkPasswordDetails;Lcom/d/a/a/g;Z)V

    .line 21988
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21992
    :pswitch_9f
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 21993
    const-string/jumbo v0, "shared_content_add_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 21994
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$15900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentAddMemberDetails;Lcom/d/a/a/g;Z)V

    .line 21995
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 21999
    :pswitch_a0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22000
    const-string/jumbo v0, "shared_content_change_downloads_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22001
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$16000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentChangeDownloadsPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22002
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22006
    :pswitch_a1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22007
    const-string/jumbo v0, "shared_content_change_invitee_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22008
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$16100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentChangeInviteeRoleDetails;Lcom/d/a/a/g;Z)V

    .line 22009
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22013
    :pswitch_a2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22014
    const-string/jumbo v0, "shared_content_change_link_audience_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22015
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$16200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkAudienceDetails;Lcom/d/a/a/g;Z)V

    .line 22016
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22020
    :pswitch_a3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22021
    const-string/jumbo v0, "shared_content_change_link_expiry_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22022
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$16300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkExpiryDetails;Lcom/d/a/a/g;Z)V

    .line 22023
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22027
    :pswitch_a4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22028
    const-string/jumbo v0, "shared_content_change_link_password_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22029
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$16400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentChangeLinkPasswordDetails;Lcom/d/a/a/g;Z)V

    .line 22030
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22034
    :pswitch_a5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22035
    const-string/jumbo v0, "shared_content_change_member_role_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22036
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$16500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;Lcom/d/a/a/g;Z)V

    .line 22037
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22041
    :pswitch_a6
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22042
    const-string/jumbo v0, "shared_content_change_viewer_info_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22043
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$16600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22044
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22048
    :pswitch_a7
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22049
    const-string/jumbo v0, "shared_content_claim_invitation_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22050
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$16700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;Lcom/d/a/a/g;Z)V

    .line 22051
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22055
    :pswitch_a8
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22056
    const-string/jumbo v0, "shared_content_copy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22057
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$16800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;Lcom/d/a/a/g;Z)V

    .line 22058
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22062
    :pswitch_a9
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22063
    const-string/jumbo v0, "shared_content_download_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22064
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$16900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentDownloadDetails;Lcom/d/a/a/g;Z)V

    .line 22065
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22069
    :pswitch_aa
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22070
    const-string/jumbo v0, "shared_content_relinquish_membership_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22071
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$17000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentRelinquishMembershipDetails;Lcom/d/a/a/g;Z)V

    .line 22072
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22076
    :pswitch_ab
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22077
    const-string/jumbo v0, "shared_content_remove_invitee_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22078
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteeDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$17100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteeDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteeDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveInviteeDetails;Lcom/d/a/a/g;Z)V

    .line 22079
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22083
    :pswitch_ac
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22084
    const-string/jumbo v0, "shared_content_remove_link_expiry_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22085
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$17200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkExpiryDetails;Lcom/d/a/a/g;Z)V

    .line 22086
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22090
    :pswitch_ad
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22091
    const-string/jumbo v0, "shared_content_remove_link_password_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22092
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$17300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveLinkPasswordDetails;Lcom/d/a/a/g;Z)V

    .line 22093
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22097
    :pswitch_ae
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22098
    const-string/jumbo v0, "shared_content_remove_member_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22099
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$17400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentRemoveMemberDetails;Lcom/d/a/a/g;Z)V

    .line 22100
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22104
    :pswitch_af
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22105
    const-string/jumbo v0, "shared_content_request_access_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22106
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$17500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentRequestAccessDetails;Lcom/d/a/a/g;Z)V

    .line 22107
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22111
    :pswitch_b0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22112
    const-string/jumbo v0, "shared_content_unshare_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22113
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$17600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentUnshareDetails;Lcom/d/a/a/g;Z)V

    .line 22114
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22118
    :pswitch_b1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22119
    const-string/jumbo v0, "shared_content_view_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22120
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$17700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedContentViewDetails;Lcom/d/a/a/g;Z)V

    .line 22121
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22125
    :pswitch_b2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22126
    const-string/jumbo v0, "shared_folder_change_confidentiality_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22127
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$17800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;Lcom/d/a/a/g;Z)V

    .line 22128
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22132
    :pswitch_b3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22133
    const-string/jumbo v0, "shared_folder_change_link_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22134
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$17900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeLinkPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22135
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22139
    :pswitch_b4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22140
    const-string/jumbo v0, "shared_folder_change_member_management_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22141
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$18000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberManagementPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22142
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22146
    :pswitch_b5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22147
    const-string/jumbo v0, "shared_folder_change_member_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22148
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$18100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22149
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22153
    :pswitch_b6
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22154
    const-string/jumbo v0, "shared_folder_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22155
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$18200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderCreateDetails;Lcom/d/a/a/g;Z)V

    .line 22156
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22160
    :pswitch_b7
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22161
    const-string/jumbo v0, "shared_folder_mount_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22162
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$18300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderMountDetails;Lcom/d/a/a/g;Z)V

    .line 22163
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22167
    :pswitch_b8
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22168
    const-string/jumbo v0, "shared_folder_transfer_ownership_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22169
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$18400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderTransferOwnershipDetails;Lcom/d/a/a/g;Z)V

    .line 22170
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22174
    :pswitch_b9
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22175
    const-string/jumbo v0, "shared_folder_unmount_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22176
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$18500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedFolderUnmountDetails;Lcom/d/a/a/g;Z)V

    .line 22177
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22181
    :pswitch_ba
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22182
    const-string/jumbo v0, "shared_note_opened_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22183
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$18600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharedNoteOpenedDetails;Lcom/d/a/a/g;Z)V

    .line 22184
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22188
    :pswitch_bb
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22189
    const-string/jumbo v0, "shmodel_app_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22190
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$18700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelAppCreateDetails;Lcom/d/a/a/g;Z)V

    .line 22191
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22195
    :pswitch_bc
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22196
    const-string/jumbo v0, "shmodel_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22197
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$18800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelCreateDetails;Lcom/d/a/a/g;Z)V

    .line 22198
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22202
    :pswitch_bd
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22203
    const-string/jumbo v0, "shmodel_disable_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22204
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelDisableDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelDisableDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$18900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelDisableDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelDisableDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelDisableDetails;Lcom/d/a/a/g;Z)V

    .line 22205
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22209
    :pswitch_be
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22210
    const-string/jumbo v0, "shmodel_fb_share_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22211
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelFbShareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelFbShareDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$19000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelFbShareDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelFbShareDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelFbShareDetails;Lcom/d/a/a/g;Z)V

    .line 22212
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22216
    :pswitch_bf
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22217
    const-string/jumbo v0, "shmodel_group_share_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22218
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$19100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelGroupShareDetails;Lcom/d/a/a/g;Z)V

    .line 22219
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22223
    :pswitch_c0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22224
    const-string/jumbo v0, "shmodel_remove_expiration_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22225
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelRemoveExpirationDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelRemoveExpirationDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$19200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelRemoveExpirationDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelRemoveExpirationDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelRemoveExpirationDetails;Lcom/d/a/a/g;Z)V

    .line 22226
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22230
    :pswitch_c1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22231
    const-string/jumbo v0, "shmodel_set_expiration_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22232
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelSetExpirationDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelSetExpirationDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$19300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelSetExpirationDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelSetExpirationDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelSetExpirationDetails;Lcom/d/a/a/g;Z)V

    .line 22233
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22237
    :pswitch_c2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22238
    const-string/jumbo v0, "shmodel_team_copy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22239
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelTeamCopyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelTeamCopyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$19400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelTeamCopyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelTeamCopyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelTeamCopyDetails;Lcom/d/a/a/g;Z)V

    .line 22240
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22244
    :pswitch_c3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22245
    const-string/jumbo v0, "shmodel_team_download_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22246
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelTeamDownloadDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelTeamDownloadDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$19500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelTeamDownloadDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelTeamDownloadDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelTeamDownloadDetails;Lcom/d/a/a/g;Z)V

    .line 22247
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22251
    :pswitch_c4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22252
    const-string/jumbo v0, "shmodel_team_share_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22253
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelTeamShareDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelTeamShareDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$19600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelTeamShareDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelTeamShareDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelTeamShareDetails;Lcom/d/a/a/g;Z)V

    .line 22254
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22258
    :pswitch_c5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22259
    const-string/jumbo v0, "shmodel_team_view_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22260
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelTeamViewDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelTeamViewDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$19700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelTeamViewDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelTeamViewDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelTeamViewDetails;Lcom/d/a/a/g;Z)V

    .line 22261
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22265
    :pswitch_c6
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22266
    const-string/jumbo v0, "shmodel_visibility_password_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22267
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPasswordDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPasswordDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$19800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPasswordDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPasswordDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPasswordDetails;Lcom/d/a/a/g;Z)V

    .line 22268
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22272
    :pswitch_c7
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22273
    const-string/jumbo v0, "shmodel_visibility_public_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22274
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPublicDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPublicDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$19900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPublicDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPublicDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityPublicDetails;Lcom/d/a/a/g;Z)V

    .line 22275
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22279
    :pswitch_c8
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22280
    const-string/jumbo v0, "shmodel_visibility_team_only_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22281
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityTeamOnlyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityTeamOnlyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$20000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityTeamOnlyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityTeamOnlyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ShmodelVisibilityTeamOnlyDetails;Lcom/d/a/a/g;Z)V

    .line 22282
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22286
    :pswitch_c9
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22287
    const-string/jumbo v0, "sso_add_cert_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22288
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$20100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoAddCertDetails;Lcom/d/a/a/g;Z)V

    .line 22289
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22293
    :pswitch_ca
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22294
    const-string/jumbo v0, "sso_add_login_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22295
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$20200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoAddLoginUrlDetails;Lcom/d/a/a/g;Z)V

    .line 22296
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22300
    :pswitch_cb
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22301
    const-string/jumbo v0, "sso_add_logout_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22302
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$20300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoAddLogoutUrlDetails;Lcom/d/a/a/g;Z)V

    .line 22303
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22307
    :pswitch_cc
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22308
    const-string/jumbo v0, "sso_change_cert_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22309
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$20400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoChangeCertDetails;Lcom/d/a/a/g;Z)V

    .line 22310
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22314
    :pswitch_cd
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22315
    const-string/jumbo v0, "sso_change_login_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22316
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$20500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoChangeLoginUrlDetails;Lcom/d/a/a/g;Z)V

    .line 22317
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22321
    :pswitch_ce
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22322
    const-string/jumbo v0, "sso_change_logout_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22323
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$20600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;Lcom/d/a/a/g;Z)V

    .line 22324
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22328
    :pswitch_cf
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22329
    const-string/jumbo v0, "sso_change_saml_identity_mode_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22330
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$20700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoChangeSamlIdentityModeDetails;Lcom/d/a/a/g;Z)V

    .line 22331
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22335
    :pswitch_d0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22336
    const-string/jumbo v0, "sso_remove_cert_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22337
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$20800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoRemoveCertDetails;Lcom/d/a/a/g;Z)V

    .line 22338
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22342
    :pswitch_d1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22343
    const-string/jumbo v0, "sso_remove_login_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22344
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$20900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoRemoveLoginUrlDetails;Lcom/d/a/a/g;Z)V

    .line 22345
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22349
    :pswitch_d2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22350
    const-string/jumbo v0, "sso_remove_logout_url_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22351
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$21000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoRemoveLogoutUrlDetails;Lcom/d/a/a/g;Z)V

    .line 22352
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22356
    :pswitch_d3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22357
    const-string/jumbo v0, "team_folder_change_status_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22358
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$21100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamFolderChangeStatusDetails;Lcom/d/a/a/g;Z)V

    .line 22359
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22363
    :pswitch_d4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22364
    const-string/jumbo v0, "team_folder_create_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22365
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$21200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamFolderCreateDetails;Lcom/d/a/a/g;Z)V

    .line 22366
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22370
    :pswitch_d5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22371
    const-string/jumbo v0, "team_folder_downgrade_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22372
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$21300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamFolderDowngradeDetails;Lcom/d/a/a/g;Z)V

    .line 22373
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22377
    :pswitch_d6
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22378
    const-string/jumbo v0, "team_folder_permanently_delete_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22379
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$21400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamFolderPermanentlyDeleteDetails;Lcom/d/a/a/g;Z)V

    .line 22380
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22384
    :pswitch_d7
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22385
    const-string/jumbo v0, "team_folder_rename_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22386
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$21500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamFolderRenameDetails;Lcom/d/a/a/g;Z)V

    .line 22387
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22391
    :pswitch_d8
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22392
    const-string/jumbo v0, "account_capture_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22393
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$21600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AccountCaptureChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22394
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22398
    :pswitch_d9
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22399
    const-string/jumbo v0, "allow_download_disabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22400
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$21700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AllowDownloadDisabledDetails;Lcom/d/a/a/g;Z)V

    .line 22401
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22405
    :pswitch_da
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22406
    const-string/jumbo v0, "allow_download_enabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22407
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$21800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AllowDownloadEnabledDetails;Lcom/d/a/a/g;Z)V

    .line 22408
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22412
    :pswitch_db
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22413
    const-string/jumbo v0, "data_placement_restriction_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22414
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$21900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22415
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22419
    :pswitch_dc
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22420
    const-string/jumbo v0, "data_placement_restriction_satisfy_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22421
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$22000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionSatisfyPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22422
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22426
    :pswitch_dd
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22427
    const-string/jumbo v0, "device_approvals_change_desktop_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22428
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$22100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeDesktopPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22429
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22433
    :pswitch_de
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22434
    const-string/jumbo v0, "device_approvals_change_mobile_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22435
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$22200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeMobilePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22436
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22440
    :pswitch_df
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22441
    const-string/jumbo v0, "device_approvals_change_overage_action_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22442
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$22300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeOverageActionDetails;Lcom/d/a/a/g;Z)V

    .line 22443
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22447
    :pswitch_e0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22448
    const-string/jumbo v0, "device_approvals_change_unlink_action_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22449
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$22400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DeviceApprovalsChangeUnlinkActionDetails;Lcom/d/a/a/g;Z)V

    .line 22450
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22454
    :pswitch_e1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22455
    const-string/jumbo v0, "emm_add_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22456
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$22500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EmmAddExceptionDetails;Lcom/d/a/a/g;Z)V

    .line 22457
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22461
    :pswitch_e2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22462
    const-string/jumbo v0, "emm_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22463
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$22600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EmmChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22464
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22468
    :pswitch_e3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22469
    const-string/jumbo v0, "emm_remove_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22470
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$22700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EmmRemoveExceptionDetails;Lcom/d/a/a/g;Z)V

    .line 22471
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22475
    :pswitch_e4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22476
    const-string/jumbo v0, "extended_version_history_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22477
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$22800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ExtendedVersionHistoryChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22478
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22482
    :pswitch_e5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22483
    const-string/jumbo v0, "file_comments_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22484
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$22900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileCommentsChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22485
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22489
    :pswitch_e6
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22490
    const-string/jumbo v0, "file_requests_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22491
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$23000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestsChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22492
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22496
    :pswitch_e7
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22497
    const-string/jumbo v0, "file_requests_emails_enabled_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22498
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$23100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsEnabledDetails;Lcom/d/a/a/g;Z)V

    .line 22499
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22503
    :pswitch_e8
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22504
    const-string/jumbo v0, "file_requests_emails_restricted_to_team_only_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22505
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$23200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/FileRequestsEmailsRestrictedToTeamOnlyDetails;Lcom/d/a/a/g;Z)V

    .line 22506
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22510
    :pswitch_e9
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22511
    const-string/jumbo v0, "google_sso_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22512
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$23300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GoogleSsoChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22513
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22517
    :pswitch_ea
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22518
    const-string/jumbo v0, "group_user_management_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22519
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$23400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22520
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22524
    :pswitch_eb
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22525
    const-string/jumbo v0, "member_requests_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22526
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$23500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberRequestsChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22527
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22531
    :pswitch_ec
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22532
    const-string/jumbo v0, "member_space_limits_add_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22533
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$23600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsAddExceptionDetails;Lcom/d/a/a/g;Z)V

    .line 22534
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22538
    :pswitch_ed
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22539
    const-string/jumbo v0, "member_space_limits_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22540
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$23700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22541
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22545
    :pswitch_ee
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22546
    const-string/jumbo v0, "member_space_limits_remove_exception_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22547
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$23800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberSpaceLimitsRemoveExceptionDetails;Lcom/d/a/a/g;Z)V

    .line 22548
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22552
    :pswitch_ef
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22553
    const-string/jumbo v0, "member_suggestions_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22554
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$23900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MemberSuggestionsChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22555
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22559
    :pswitch_f0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22560
    const-string/jumbo v0, "microsoft_office_addin_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22561
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$24000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MicrosoftOfficeAddinChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22562
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22566
    :pswitch_f1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22567
    const-string/jumbo v0, "network_control_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22568
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$24100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/NetworkControlChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22569
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22573
    :pswitch_f2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22574
    const-string/jumbo v0, "paper_change_deployment_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22575
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$24200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22576
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22580
    :pswitch_f3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22581
    const-string/jumbo v0, "paper_change_member_link_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22582
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$24300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberLinkPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22583
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22587
    :pswitch_f4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22588
    const-string/jumbo v0, "paper_change_member_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22589
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$24400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperChangeMemberPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22590
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22594
    :pswitch_f5
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22595
    const-string/jumbo v0, "paper_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22596
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$24500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PaperChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22597
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22601
    :pswitch_f6
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22602
    const-string/jumbo v0, "permanent_delete_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22603
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$24600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/PermanentDeleteChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22604
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22608
    :pswitch_f7
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22609
    const-string/jumbo v0, "sharing_change_folder_join_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22610
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$24700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharingChangeFolderJoinPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22611
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22615
    :pswitch_f8
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22616
    const-string/jumbo v0, "sharing_change_link_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22617
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$24800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharingChangeLinkPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22618
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22622
    :pswitch_f9
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22623
    const-string/jumbo v0, "sharing_change_member_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22624
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$24900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22625
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22629
    :pswitch_fa
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22630
    const-string/jumbo v0, "smart_sync_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22631
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$25000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SmartSyncChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22632
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22636
    :pswitch_fb
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22637
    const-string/jumbo v0, "smart_sync_not_opt_out_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22638
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$25100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SmartSyncNotOptOutDetails;Lcom/d/a/a/g;Z)V

    .line 22639
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22643
    :pswitch_fc
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22644
    const-string/jumbo v0, "smart_sync_opt_out_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22645
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$25200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SmartSyncOptOutDetails;Lcom/d/a/a/g;Z)V

    .line 22646
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22650
    :pswitch_fd
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22651
    const-string/jumbo v0, "sso_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22652
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$25300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22653
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22657
    :pswitch_fe
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22658
    const-string/jumbo v0, "tfa_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22659
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$25400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22660
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22664
    :pswitch_ff
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22665
    const-string/jumbo v0, "two_account_change_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22666
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$25500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TwoAccountChangePolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22667
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22671
    :pswitch_100
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22672
    const-string/jumbo v0, "web_sessions_change_fixed_length_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22673
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$25600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeFixedLengthPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22674
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22678
    :pswitch_101
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22679
    const-string/jumbo v0, "web_sessions_change_idle_length_policy_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22680
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$25700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/WebSessionsChangeIdleLengthPolicyDetails;Lcom/d/a/a/g;Z)V

    .line 22681
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22685
    :pswitch_102
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22686
    const-string/jumbo v0, "team_profile_add_logo_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22687
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$25800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamProfileAddLogoDetails;Lcom/d/a/a/g;Z)V

    .line 22688
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22692
    :pswitch_103
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22693
    const-string/jumbo v0, "team_profile_change_default_language_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22694
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$25900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeDefaultLanguageDetails;Lcom/d/a/a/g;Z)V

    .line 22695
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22699
    :pswitch_104
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22700
    const-string/jumbo v0, "team_profile_change_logo_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22701
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$26000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeLogoDetails;Lcom/d/a/a/g;Z)V

    .line 22702
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22706
    :pswitch_105
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22707
    const-string/jumbo v0, "team_profile_change_name_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22708
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$26100(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamProfileChangeNameDetails;Lcom/d/a/a/g;Z)V

    .line 22709
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22713
    :pswitch_106
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22714
    const-string/jumbo v0, "team_profile_remove_logo_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22715
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$26200(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TeamProfileRemoveLogoDetails;Lcom/d/a/a/g;Z)V

    .line 22716
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22720
    :pswitch_107
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22721
    const-string/jumbo v0, "tfa_add_backup_phone_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22722
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$26300(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaAddBackupPhoneDetails;Lcom/d/a/a/g;Z)V

    .line 22723
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22727
    :pswitch_108
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22728
    const-string/jumbo v0, "tfa_add_security_key_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22729
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$26400(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaAddSecurityKeyDetails;Lcom/d/a/a/g;Z)V

    .line 22730
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22734
    :pswitch_109
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22735
    const-string/jumbo v0, "tfa_change_backup_phone_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22736
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$26500(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaChangeBackupPhoneDetails;Lcom/d/a/a/g;Z)V

    .line 22737
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22741
    :pswitch_10a
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22742
    const-string/jumbo v0, "tfa_change_status_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22743
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$26600(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaChangeStatusDetails;Lcom/d/a/a/g;Z)V

    .line 22744
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22748
    :pswitch_10b
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22749
    const-string/jumbo v0, "tfa_remove_backup_phone_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22750
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$26700(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaRemoveBackupPhoneDetails;Lcom/d/a/a/g;Z)V

    .line 22751
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22755
    :pswitch_10c
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22756
    const-string/jumbo v0, "tfa_remove_security_key_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22757
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$26800(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaRemoveSecurityKeyDetails;Lcom/d/a/a/g;Z)V

    .line 22758
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22762
    :pswitch_10d
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22763
    const-string/jumbo v0, "tfa_reset_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22764
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TfaResetDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$26900(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/TfaResetDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/TfaResetDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TfaResetDetails;Lcom/d/a/a/g;Z)V

    .line 22765
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 22769
    :pswitch_10e
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 22770
    const-string/jumbo v0, "missing_details"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 22771
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MissingDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MissingDetails$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventDetails;->access$27000(Lcom/dropbox/core/v2/teamlog/EventDetails;)Lcom/dropbox/core/v2/teamlog/MissingDetails;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/MissingDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/MissingDetails;Lcom/d/a/a/g;Z)V

    .line 22772
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto/16 :goto_0

    .line 20877
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
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_d1
        :pswitch_d2
        :pswitch_d3
        :pswitch_d4
        :pswitch_d5
        :pswitch_d6
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_dc
        :pswitch_dd
        :pswitch_de
        :pswitch_df
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_e3
        :pswitch_e4
        :pswitch_e5
        :pswitch_e6
        :pswitch_e7
        :pswitch_e8
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_ed
        :pswitch_ee
        :pswitch_ef
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_f4
        :pswitch_f5
        :pswitch_f6
        :pswitch_f7
        :pswitch_f8
        :pswitch_f9
        :pswitch_fa
        :pswitch_fb
        :pswitch_fc
        :pswitch_fd
        :pswitch_fe
        :pswitch_ff
        :pswitch_100
        :pswitch_101
        :pswitch_102
        :pswitch_103
        :pswitch_104
        :pswitch_105
        :pswitch_106
        :pswitch_107
        :pswitch_108
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_10e
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
    .line 20872
    check-cast p1, Lcom/dropbox/core/v2/teamlog/EventDetails;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EventDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EventDetails;Lcom/d/a/a/g;)V

    return-void
.end method
