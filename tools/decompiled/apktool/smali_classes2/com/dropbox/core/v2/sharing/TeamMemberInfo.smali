.class public Lcom/dropbox/core/v2/sharing/TeamMemberInfo;
.super Ljava/lang/Object;
.source "TeamMemberInfo.java"


# instance fields
.field protected final displayName:Ljava/lang/String;

.field protected final memberId:Ljava/lang/String;

.field protected final teamInfo:Lcom/dropbox/core/v2/users/Team;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;-><init>(Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'teamInfo\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    .line 47
    if-nez p2, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'displayName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    if-ne p1, p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 114
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 119
    check-cast p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;

    .line 120
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamInfo()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->teamInfo:Lcom/dropbox/core/v2/users/Team;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo;->memberId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 106
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/TeamMemberInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
