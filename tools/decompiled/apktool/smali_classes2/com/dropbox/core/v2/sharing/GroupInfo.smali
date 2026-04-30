.class public Lcom/dropbox/core/v2/sharing/GroupInfo;
.super Lcom/dropbox/core/v2/teamcommon/GroupSummary;
.source "GroupInfo.java"


# instance fields
.field protected final groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

.field protected final isMember:Z

.field protected final isOwner:Z

.field protected final sameTeam:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZ)V
    .locals 10

    .prologue
    .line 85
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/sharing/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZLjava/lang/String;Ljava/lang/Long;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZLjava/lang/String;Ljava/lang/Long;)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p8

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamcommon/GroupSummary;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Ljava/lang/String;Ljava/lang/Long;)V

    .line 57
    if-nez p4, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'groupType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    .line 61
    iput-boolean p5, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    .line 62
    iput-boolean p6, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    .line 63
    iput-boolean p7, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/sharing/GroupInfo;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$600(Lcom/dropbox/core/v2/sharing/GroupInfo;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    return-object v0
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZ)Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;
    .locals 8

    .prologue
    .line 186
    new-instance v0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZ)V

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

    .line 280
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

    if-eqz v2, :cond_9

    .line 267
    check-cast p1, Lcom/dropbox/core/v2/sharing/GroupInfo;

    .line 268
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 270
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    .line 271
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamcommon/GroupType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    if-ne v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    if-ne v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    .line 276
    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 280
    goto/16 :goto_0
.end method

.method public getGroupExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupManagementType()Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()Lcom/dropbox/core/v2/teamcommon/GroupType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    return-object v0
.end method

.method public getIsMember()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    return v0
.end method

.method public getIsOwner()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    return v0
.end method

.method public getMemberCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->memberCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getSameTeam()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 247
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isMember:Z

    .line 249
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->isOwner:Z

    .line 250
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo;->sameTeam:Z

    .line 251
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 247
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 253
    invoke-super {p0}, Lcom/dropbox/core/v2/teamcommon/GroupSummary;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 254
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 286
    sget-object v0, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    sget-object v0, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
