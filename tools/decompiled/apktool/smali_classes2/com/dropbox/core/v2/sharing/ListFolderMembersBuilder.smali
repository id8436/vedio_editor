.class public Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;
.super Ljava/lang/Object;
.source "ListFolderMembersBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

.field private final _client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 35
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    .line 39
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;->build()Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFolderMembers(Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    move-result-object v0

    return-object v0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;->withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    .line 56
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;->_builder:Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    .line 76
    return-object p0
.end method
