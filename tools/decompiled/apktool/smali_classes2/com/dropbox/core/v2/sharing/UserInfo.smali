.class public Lcom/dropbox/core/v2/sharing/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field protected final accountId:Ljava/lang/String;

.field protected final sameTeam:Z

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/UserInfo;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'accountId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'accountId\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->accountId:Ljava/lang/String;

    .line 58
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->sameTeam:Z

    .line 59
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->teamMemberId:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    if-ne p1, p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    check-cast p1, Lcom/dropbox/core/v2/sharing/UserInfo;

    .line 131
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UserInfo;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UserInfo;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->sameTeam:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/UserInfo;->sameTeam:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UserInfo;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->teamMemberId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/UserInfo;->teamMemberId:Ljava/lang/String;

    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 137
    goto :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getSameTeam()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->sameTeam:Z

    return v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->accountId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->sameTeam:Z

    .line 114
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UserInfo;->teamMemberId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 112
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 117
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
