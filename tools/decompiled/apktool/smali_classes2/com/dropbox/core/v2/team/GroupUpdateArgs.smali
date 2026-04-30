.class Lcom/dropbox/core/v2/team/GroupUpdateArgs;
.super Lcom/dropbox/core/v2/team/IncludeMembersArg;
.source "GroupUpdateArgs.java"


# instance fields
.field protected final group:Lcom/dropbox/core/v2/team/GroupSelector;

.field protected final newGroupExternalId:Ljava/lang/String;

.field protected final newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field protected final newGroupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 69
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/GroupUpdateArgs;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;ZLjava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;ZLjava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lcom/dropbox/core/v2/team/IncludeMembersArg;-><init>(Z)V

    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'group\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    .line 53
    iput-object p3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 56
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    if-ne p1, p0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 252
    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 256
    check-cast p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;

    .line 257
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/team/GroupSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->returnMembers:Z

    iget-boolean v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->returnMembers:Z

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    .line 259
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    .line 260
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 261
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 265
    goto :goto_0
.end method

.method public getGroup()Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    return-object v0
.end method

.method public getNewGroupExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewGroupManagementType()Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    return-object v0
.end method

.method public getNewGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnMembers()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->returnMembers:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupExternalId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 242
    invoke-super {p0}, Lcom/dropbox/core/v2/team/IncludeMembersArg;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 243
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    sget-object v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
