.class public Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;
.super Ljava/lang/Object;
.source "GroupUpdateArgs.java"


# instance fields
.field protected final group:Lcom/dropbox/core/v2/team/GroupSelector;

.field protected newGroupExternalId:Ljava/lang/String;

.field protected newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

.field protected newGroupName:Ljava/lang/String;

.field protected returnMembers:Z


# direct methods
.method protected constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    if-nez p1, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'group\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->returnMembers:Z

    .line 153
    iput-object v1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->newGroupName:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->newGroupExternalId:Ljava/lang/String;

    .line 155
    iput-object v1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 156
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/team/GroupUpdateArgs;
    .locals 6

    .prologue
    .line 230
    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->returnMembers:Z

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->newGroupName:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->newGroupExternalId:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/team/GroupUpdateArgs;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;ZLjava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)V

    return-object v0
.end method

.method public withNewGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->newGroupExternalId:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public withNewGroupManagementType(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->newGroupManagementType:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 220
    return-object p0
.end method

.method public withNewGroupName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->newGroupName:Ljava/lang/String;

    .line 192
    return-object p0
.end method

.method public withReturnMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;
    .locals 1

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->returnMembers:Z

    .line 179
    :goto_0
    return-object p0

    .line 177
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->returnMembers:Z

    goto :goto_0
.end method
