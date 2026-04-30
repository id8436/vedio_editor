.class public Lcom/dropbox/core/v2/team/TeamGetInfoResult;
.super Ljava/lang/Object;
.source "TeamGetInfoResult.java"


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final numLicensedUsers:J

.field protected final numProvisionedUsers:J

.field protected final policies:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

.field protected final teamId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->name:Ljava/lang/String;

    .line 45
    if-nez p2, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'teamId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->teamId:Ljava/lang/String;

    .line 49
    iput-wide p3, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numLicensedUsers:J

    .line 50
    iput-wide p5, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numProvisionedUsers:J

    .line 51
    if-nez p7, :cond_2

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'policies\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_2
    iput-object p7, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->policies:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    if-ne p1, p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 120
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 124
    check-cast p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;

    .line 125
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->teamId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->teamId:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->teamId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->teamId:Ljava/lang/String;

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-wide v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numLicensedUsers:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numLicensedUsers:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numProvisionedUsers:J

    iget-wide v4, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numProvisionedUsers:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->policies:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->policies:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->policies:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->policies:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    .line 129
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumLicensedUsers()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numLicensedUsers:J

    return-wide v0
.end method

.method public getNumProvisionedUsers()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numProvisionedUsers:J

    return-wide v0
.end method

.method public getPolicies()Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->policies:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    return-object v0
.end method

.method public getTeamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->teamId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->teamId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numLicensedUsers:J

    .line 107
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->numProvisionedUsers:J

    .line 108
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;->policies:Lcom/dropbox/core/v2/teampolicies/TeamMemberPolicies;

    aput-object v2, v0, v1

    .line 104
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 111
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
