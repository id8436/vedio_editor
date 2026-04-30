.class public Lcom/dropbox/core/v2/team/MembersListBuilder;
.super Ljava/lang/Object;
.source "MembersListBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/team/MembersListArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersListArg$Builder;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/team/MembersListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->build()Lcom/dropbox/core/v2/team/MembersListArg;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersList(Lcom/dropbox/core/v2/team/MembersListArg;)Lcom/dropbox/core/v2/team/MembersListResult;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeRemoved(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersListBuilder;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->withIncludeRemoved(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    .line 70
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/team/MembersListBuilder;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersListBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersListArg$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    .line 55
    return-object p0
.end method
