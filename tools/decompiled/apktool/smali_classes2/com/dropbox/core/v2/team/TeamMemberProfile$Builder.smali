.class public Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
.super Lcom/dropbox/core/v2/team/MemberProfile$Builder;
.source "TeamMemberProfile.java"


# instance fields
.field protected final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final memberFolderId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dropbox/core/v2/team/TeamMemberStatus;",
            "Lcom/dropbox/core/v2/users/Name;",
            "Lcom/dropbox/core/v2/team/TeamMembershipType;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
    invoke-direct/range {p0 .. p6}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;)V

    .line 266
    if-nez p7, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'groups\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    if-nez v0, :cond_1

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'groups\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_2
    iput-object p7, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->groups:Ljava/util/List;

    .line 275
    if-nez p8, :cond_3

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'memberFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_3
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p8}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 279
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_4
    iput-object p8, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->memberFolderId:Ljava/lang/String;

    .line 282
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/dropbox/core/v2/team/MemberProfile;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->build()Lcom/dropbox/core/v2/team/TeamMemberProfile;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/dropbox/core/v2/team/TeamMemberProfile;
    .locals 13

    .prologue
    .line 348
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->teamMemberId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->email:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->emailVerified:Z

    iget-object v4, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v6, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v7, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->groups:Ljava/util/List;

    iget-object v8, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->memberFolderId:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->externalId:Ljava/lang/String;

    iget-object v10, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->accountId:Ljava/lang/String;

    iget-object v11, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->joinedOn:Ljava/util/Date;

    iget-object v12, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->persistentId:Ljava/lang/String;

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/TeamMemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    .line 311
    return-object p0
.end method

.method public bridge synthetic withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    .line 295
    return-object p0
.end method

.method public bridge synthetic withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0

    .prologue
    .line 323
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withJoinedOn(Ljava/util/Date;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    .line 324
    return-object p0
.end method

.method public bridge synthetic withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;->withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 0

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/team/MemberProfile$Builder;->withPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MemberProfile$Builder;

    .line 338
    return-object p0
.end method
