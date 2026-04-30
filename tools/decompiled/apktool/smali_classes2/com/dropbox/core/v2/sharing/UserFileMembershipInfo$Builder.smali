.class public Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;
.super Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;
.source "UserFileMembershipInfo.java"


# instance fields
.field protected timeLastSeen:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->timeLastSeen:Ljava/util/Date;

    .line 159
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/MembershipInfo;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->build()Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;
    .locals 7

    .prologue
    .line 226
    new-instance v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->initials:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->isInherited:Z

    iget-object v6, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->timeLastSeen:Ljava/util/Date;

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;Ljava/util/List;Ljava/lang/String;ZLjava/util/Date;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/UserMembershipInfo;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->build()Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;
    .locals 0

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;

    .line 200
    return-object p0
.end method

.method public bridge synthetic withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;
    .locals 0

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;

    .line 216
    return-object p0
.end method

.method public bridge synthetic withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;

    .line 188
    return-object p0
.end method

.method public bridge synthetic withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withTimeLastSeen(Ljava/util/Date;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;
    .locals 1

    .prologue
    .line 170
    invoke-static {p1}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;->timeLastSeen:Ljava/util/Date;

    .line 171
    return-object p0
.end method
