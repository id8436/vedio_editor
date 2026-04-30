.class public Lcom/dropbox/core/v2/team/TeamMemberProfile;
.super Lcom/dropbox/core/v2/team/MemberProfile;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;)V
    .locals 13
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
    .line 113
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v12}, Lcom/dropbox/core/v2/team/TeamMemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 12
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v1 .. v11}, Lcom/dropbox/core/v2/team/MemberProfile;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 69
    if-nez p7, :cond_0

    .line 70
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'groups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    if-nez v1, :cond_1

    .line 74
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'groups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_2
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    .line 78
    if-nez p8, :cond_3

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'memberFolderId\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_3
    const-string/jumbo v1, "[-_0-9a-zA-Z:]+"

    move-object/from16 v0, p8

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "String \'memberFolderId\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_4
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;
    .locals 9
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
            ")",
            "Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/team/TeamMemberStatus;Lcom/dropbox/core/v2/users/Name;Lcom/dropbox/core/v2/team/TeamMembershipType;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    if-ne p1, p0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 368
    goto :goto_0

    .line 371
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 372
    check-cast p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;

    .line 373
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_4
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->emailVerified:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->emailVerified:Z

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 376
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    .line 377
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    .line 378
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/TeamMembershipType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    .line 379
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    .line 382
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    .line 383
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_d
    move v0, v1

    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 388
    goto/16 :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->emailVerified:Z

    return v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getJoinedOn()Ljava/util/Date;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->joinedOn:Ljava/util/Date;

    return-object v0
.end method

.method public getMemberFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getMembershipType()Lcom/dropbox/core/v2/team/TeamMembershipType;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->membershipType:Lcom/dropbox/core/v2/team/TeamMembershipType;

    return-object v0
.end method

.method public getName()Lcom/dropbox/core/v2/users/Name;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->name:Lcom/dropbox/core/v2/users/Name;

    return-object v0
.end method

.method public getPersistentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->persistentId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->status:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 354
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->groups:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberProfile;->memberFolderId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 358
    invoke-super {p0}, Lcom/dropbox/core/v2/team/MemberProfile;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 359
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberProfile$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
