.class public Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;
.super Ljava/lang/Object;
.source "ListFileMembersBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 35
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    .line 39
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->build()Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFileMembers(Lcom/dropbox/core/v2/sharing/ListFileMembersArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    move-result-object v0

    return-object v0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    .line 54
    return-object p0
.end method

.method public withIncludeInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->withIncludeInherited(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    .line 70
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    .line 90
    return-object p0
.end method
