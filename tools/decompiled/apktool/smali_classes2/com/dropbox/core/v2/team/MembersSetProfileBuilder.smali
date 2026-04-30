.class public Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
.super Ljava/lang/Object;
.source "MembersSetProfileBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSetProfileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->build()Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersSetProfile(Lcom/dropbox/core/v2/team/MembersSetProfileArg;)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public withNewEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    .line 53
    return-object p0
.end method

.method public withNewExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewExternalId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    .line 69
    return-object p0
.end method

.method public withNewGivenName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewGivenName(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    .line 85
    return-object p0
.end method

.method public withNewPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewPersistentId(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    .line 114
    return-object p0
.end method

.method public withNewSurname(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;->_builder:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;->withNewSurname(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    .line 101
    return-object p0
.end method
