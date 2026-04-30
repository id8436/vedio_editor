.class public Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
.super Ljava/lang/Object;
.source "MembersRemoveBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 34
    if-nez p2, :cond_1

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    .line 38
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->build()Lcom/dropbox/core/v2/team/MembersRemoveArg;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersRemove(Lcom/dropbox/core/v2/team/MembersRemoveArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v0

    return-object v0
.end method

.method public withKeepAccount(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->withKeepAccount(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    .line 98
    return-object p0
.end method

.method public withTransferAdminId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->withTransferAdminId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    .line 80
    return-object p0
.end method

.method public withTransferDestId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->withTransferDestId(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    .line 66
    return-object p0
.end method

.method public withWipeData(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;->withWipeData(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    .line 53
    return-object p0
.end method
