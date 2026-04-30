.class public Lcom/dropbox/core/v2/users/BasicAccount;
.super Lcom/dropbox/core/v2/users/Account;
.source "BasicAccount.java"


# instance fields
.field protected final isTeammate:Z

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZ)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/dropbox/core/v2/users/BasicAccount;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/users/Account;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 56
    iput-boolean p6, p0, Lcom/dropbox/core/v2/users/BasicAccount;->isTeammate:Z

    .line 57
    iput-object p8, p0, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZ)Lcom/dropbox/core/v2/users/BasicAccount$Builder;
    .locals 7

    .prologue
    .line 184
    new-instance v0, Lcom/dropbox/core/v2/users/BasicAccount$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/users/BasicAccount$Builder;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    if-ne p1, p0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 281
    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 285
    check-cast p1, Lcom/dropbox/core/v2/users/BasicAccount;

    .line 286
    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->name:Lcom/dropbox/core/v2/users/Name;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->name:Lcom/dropbox/core/v2/users/Name;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->name:Lcom/dropbox/core/v2/users/Name;

    .line 287
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->email:Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->emailVerified:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->emailVerified:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->disabled:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->disabled:Z

    if-ne v2, v3, :cond_7

    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->isTeammate:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->isTeammate:Z

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->profilePhotoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->profilePhotoUrl:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->profilePhotoUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->profilePhotoUrl:Ljava/lang/String;

    .line 292
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 297
    goto/16 :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dropbox/core/v2/users/BasicAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisabled()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/BasicAccount;->disabled:Z

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/users/BasicAccount;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/BasicAccount;->emailVerified:Z

    return v0
.end method

.method public getIsTeammate()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/dropbox/core/v2/users/BasicAccount;->isTeammate:Z

    return v0
.end method

.method public getName()Lcom/dropbox/core/v2/users/Name;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/users/BasicAccount;->name:Lcom/dropbox/core/v2/users/Name;

    return-object v0
.end method

.method public getProfilePhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dropbox/core/v2/users/BasicAccount;->profilePhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->isTeammate:Z

    .line 268
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/users/BasicAccount;->teamMemberId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 267
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 271
    invoke-super {p0}, Lcom/dropbox/core/v2/users/Account;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 272
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/BasicAccount$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/BasicAccount$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
