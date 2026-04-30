.class public Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;
.super Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
.source "GroupMembershipInfo.java"


# instance fields
.field protected final group:Lcom/dropbox/core/v2/sharing/GroupInfo;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/GroupInfo;)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 143
    if-nez p2, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'group\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    .line 147
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;
    .locals 6

    .prologue
    .line 201
    new-instance v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->initials:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->isInherited:Z

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/GroupInfo;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/MembershipInfo;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->build()Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;
    .locals 0

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    .line 175
    return-object p0
.end method

.method public bridge synthetic withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;
    .locals 0

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    .line 191
    return-object p0
.end method

.method public bridge synthetic withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    .line 163
    return-object p0
.end method

.method public bridge synthetic withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method
