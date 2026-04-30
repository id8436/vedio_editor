.class public Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;
.super Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
.source "GroupInfo.java"


# instance fields
.field protected final groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

.field protected final isMember:Z

.field protected final isOwner:Z

.field protected final sameTeam:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZ)V
    .locals 2

    .prologue
    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    .line 200
    if-nez p4, :cond_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'groupType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    .line 204
    iput-boolean p5, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->isMember:Z

    .line 205
    iput-boolean p6, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->isOwner:Z

    .line 206
    iput-boolean p7, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->sameTeam:Z

    .line 207
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/GroupInfo;
    .locals 10

    .prologue
    .line 241
    new-instance v0, Lcom/dropbox/core/v2/sharing/GroupInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->groupName:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->groupId:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->groupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->groupType:Lcom/dropbox/core/v2/teamcommon/GroupType;

    iget-boolean v5, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->isMember:Z

    iget-boolean v6, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->isOwner:Z

    iget-boolean v7, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->sameTeam:Z

    iget-object v8, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->groupExternalId:Ljava/lang/String;

    iget-object v9, p0, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->memberCount:Ljava/lang/Long;

    invoke-direct/range {v0 .. v9}, Lcom/dropbox/core/v2/sharing/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/dropbox/core/v2/teamcommon/GroupType;ZZZLjava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/teamcommon/GroupSummary;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->build()Lcom/dropbox/core/v2/sharing/GroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;
    .locals 0

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;

    .line 219
    return-object p0
.end method

.method public bridge synthetic withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;
    .locals 0

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;->withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;

    .line 231
    return-object p0
.end method

.method public bridge synthetic withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamcommon/GroupSummary$Builder;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;->withMemberCount(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/GroupInfo$Builder;

    move-result-object v0

    return-object v0
.end method
