.class public Lcom/dropbox/core/v2/team/GroupsCreateBuilder;
.super Ljava/lang/Object;
.source "GroupsCreateBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupsCreateBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 34
    if-nez p2, :cond_1

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupsCreateBuilder;->_builder:Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

    .line 38
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsCreateBuilder;->_builder:Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->build()Lcom/dropbox/core/v2/team/GroupCreateArg;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/dropbox/core/v2/team/GroupsCreateBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsCreate(Lcom/dropbox/core/v2/team/GroupCreateArg;)Lcom/dropbox/core/v2/team/GroupFullInfo;

    move-result-object v0

    return-object v0
.end method

.method public withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsCreateBuilder;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsCreateBuilder;->_builder:Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->withGroupExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

    .line 50
    return-object p0
.end method

.method public withGroupManagementType(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)Lcom/dropbox/core/v2/team/GroupsCreateBuilder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsCreateBuilder;->_builder:Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;->withGroupManagementType(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

    .line 63
    return-object p0
.end method
