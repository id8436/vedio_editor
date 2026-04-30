.class public Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;
.super Ljava/lang/Object;
.source "SfTeamJoinFromOobLinkDetails.java"


# instance fields
.field protected final originalFolderName:Ljava/lang/String;

.field protected final sharingPermission:Ljava/lang/String;

.field protected final targetAssetIndex:J

.field protected final tokenKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 68
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->targetAssetIndex:J

    .line 47
    if-nez p3, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static newBuilder(JLjava/lang/String;)Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Builder;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    if-ne p1, p0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 196
    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 200
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;

    .line 201
    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->targetAssetIndex:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->targetAssetIndex:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public getTokenKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 181
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->targetAssetIndex:J

    .line 182
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->originalFolderName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->tokenKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails;->sharingPermission:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 181
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 187
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamJoinFromOobLinkDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
