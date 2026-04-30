.class public Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;
.super Lcom/dropbox/core/v2/teamlog/UserLogInfo;
.source "NonTeamMemberLogInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, v0, v0}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    if-ne p1, p0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 172
    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 176
    check-cast p1, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    .line 177
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->displayName:Ljava/lang/String;

    .line 178
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->email:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->email:Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 183
    goto :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
