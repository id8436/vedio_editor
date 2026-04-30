.class public Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;
.super Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
.source "UserMembershipInfo.java"


# instance fields
.field protected final user:Lcom/dropbox/core/v2/sharing/UserInfo;


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;)V
    .locals 2

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 143
    if-nez p2, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'user\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    .line 147
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/MembershipInfo;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->build()Lcom/dropbox/core/v2/sharing/UserMembershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/sharing/UserMembershipInfo;
    .locals 6

    .prologue
    .line 201
    new-instance v0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->permissions:Ljava/util/List;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->initials:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->isInherited:Z

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public bridge synthetic withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;
    .locals 0

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withInitials(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    .line 175
    return-object p0
.end method

.method public bridge synthetic withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;
    .locals 0

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withIsInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    .line 191
    return-object p0
.end method

.method public bridge synthetic withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Builder;"
        }
    .end annotation

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;->withPermissions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/MembershipInfo$Builder;

    .line 163
    return-object p0
.end method
