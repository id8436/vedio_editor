.class Lcom/dropbox/core/v2/team/MembersRemoveArg;
.super Lcom/dropbox/core/v2/team/MembersDeactivateArg;
.source "MembersRemoveArg.java"


# instance fields
.field protected final keepAccount:Z

.field protected final transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected final transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 66
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/MembersRemoveArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;ZLcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;ZLcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/team/MembersDeactivateArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V

    .line 49
    iput-object p3, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 50
    iput-object p4, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 51
    iput-boolean p5, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->keepAccount:Z

    .line 52
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 259
    if-ne p1, p0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 263
    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 267
    check-cast p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;

    .line 268
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->wipeData:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->wipeData:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 270
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 271
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->keepAccount:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/MembersRemoveArg;->keepAccount:Z

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 276
    goto :goto_0
.end method

.method public getKeepAccount()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->keepAccount:Z

    return v0
.end method

.method public getTransferAdminId()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public getTransferDestId()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public getUser()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public getWipeData()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->wipeData:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferDestId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->transferAdminId:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/MembersRemoveArg;->keepAccount:Z

    .line 251
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 248
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 253
    invoke-super {p0}, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 254
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    sget-object v0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    sget-object v0, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
