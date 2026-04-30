.class public Lcom/dropbox/core/v2/users/FullAccount;
.super Lcom/dropbox/core/v2/users/Account;
.source "FullAccount.java"


# instance fields
.field protected final accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

.field protected final country:Ljava/lang/String;

.field protected final isPaired:Z

.field protected final locale:Ljava/lang/String;

.field protected final referralLink:Ljava/lang/String;

.field protected final team:Lcom/dropbox/core/v2/users/FullTeam;

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;)V
    .locals 14

    .prologue
    .line 138
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v13}, Lcom/dropbox/core/v2/users/FullAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/users/FullTeam;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/users/FullTeam;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 76
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/users/Account;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 77
    if-eqz p11, :cond_1

    .line 78
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "String \'country\' is shorter than 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 82
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "String \'country\' is longer than 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_1
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    .line 86
    if-nez p6, :cond_2

    .line 87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'locale\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_2
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "String \'locale\' is shorter than 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_3
    iput-object p6, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    .line 93
    if-nez p7, :cond_4

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'referralLink\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_4
    iput-object p7, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    .line 98
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    .line 99
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    .line 100
    if-nez p9, :cond_5

    .line 101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'accountType\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_5
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    .line 104
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;)Lcom/dropbox/core/v2/users/FullAccount$Builder;
    .locals 10

    .prologue
    .line 299
    new-instance v0, Lcom/dropbox/core/v2/users/FullAccount$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/users/FullAccount$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZLcom/dropbox/core/v2/userscommon/AccountType;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 457
    if-ne p1, p0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return v0

    .line 460
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 461
    goto :goto_0

    .line 464
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 465
    check-cast p1, Lcom/dropbox/core/v2/users/FullAccount;

    .line 466
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    .line 467
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    .line 468
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    if-ne v2, v3, :cond_c

    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    .line 471
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    .line 472
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_7
    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    .line 474
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/userscommon/AccountType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    .line 475
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    .line 476
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    .line 477
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/FullTeam;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_c
    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 482
    goto/16 :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Lcom/dropbox/core/v2/userscommon/AccountType;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->disabled:Z

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->emailVerified:Z

    return v0
.end method

.method public getIsPaired()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/dropbox/core/v2/users/Name;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->name:Lcom/dropbox/core/v2/users/Name;

    return-object v0
.end method

.method public getProfilePhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->profilePhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReferralLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTeam()Lcom/dropbox/core/v2/users/FullTeam;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 442
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->country:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->locale:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->referralLink:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->team:Lcom/dropbox/core/v2/users/FullTeam;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->teamMemberId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->isPaired:Z

    .line 448
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/users/FullAccount;->accountType:Lcom/dropbox/core/v2/userscommon/AccountType;

    aput-object v2, v0, v1

    .line 442
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 451
    invoke-super {p0}, Lcom/dropbox/core/v2/users/Account;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 452
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    sget-object v0, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullAccount$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    sget-object v0, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullAccount$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
