.class public Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;
.super Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
.source "InviteeMembershipInfo.java"


# instance fields
.field protected final invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

.field protected user:Lcom/dropbox/core/v2/sharing/UserInfo;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;)V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 154
    if-nez p2, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'invitee\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    .line 159
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
    .locals 7

    .prologue
    .line 225
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->initials:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->isInherited:Z

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;Ljava/util/List;Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/UserInfo;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/MembershipInfo;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->build()Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;
    .locals 0

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    .line 199
    return-object p0
.end method

.method public bridge synthetic withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;
    .locals 0

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    .line 215
    return-object p0
.end method

.method public bridge synthetic withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    .line 187
    return-object p0
.end method

.method public bridge synthetic withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withUser(Lcom/dropbox/core/v2/sharing/UserInfo;)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    .line 170
    return-object p0
.end method
