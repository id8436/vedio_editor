.class public Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;
.super Lcom/dropbox/core/v2/teamlog/UserLogInfo;
.source "TeamMemberLogInfo.java"


# instance fields
.field protected final memberExternalId:Ljava/lang/String;

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 65
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    .line 51
    if-eqz p5, :cond_0

    .line 52
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'memberExternalId\' is longer than 64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    if-ne p1, p0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 247
    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 251
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;

    .line 252
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->teamMemberId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo;->memberExternalId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 237
    invoke-super {p0}, Lcom/dropbox/core/v2/teamlog/UserLogInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 238
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/TeamMemberLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
