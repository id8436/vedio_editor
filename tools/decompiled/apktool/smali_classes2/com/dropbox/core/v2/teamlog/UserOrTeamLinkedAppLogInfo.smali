.class public Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;
.super Lcom/dropbox/core/v2/teamlog/AppLogInfo;
.source "UserOrTeamLinkedAppLogInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/AppLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p1, p0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    check-cast p1, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;

    .line 139
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->appId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->appId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->appId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->displayName:Ljava/lang/String;

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 125
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
    .line 150
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/UserOrTeamLinkedAppLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
