.class public Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;
.super Ljava/lang/Object;
.source "GroupsUpdateBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

.field private final _client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 34
    if-nez p2, :cond_1

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    .line 38
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->build()Lcom/dropbox/core/v2/team/GroupUpdateArgs;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsUpdate(Lcom/dropbox/core/v2/team/GroupUpdateArgs;)Lcom/dropbox/core/v2/team/GroupFullInfo;

    move-result-object v0

    return-object v0
.end method

.method public withNewGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->withNewGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    .line 82
    return-object p0
.end method

.method public withNewGroupManagementType(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->withNewGroupManagementType(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    .line 95
    return-object p0
.end method

.method public withNewGroupName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->withNewGroupName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    .line 67
    return-object p0
.end method

.method public withReturnMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;->_builder:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;->withReturnMembers(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    .line 54
    return-object p0
.end method
