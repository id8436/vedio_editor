.class public Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;
.super Ljava/lang/Object;
.source "UpdateFolderPolicyBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    .line 35
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;->_builder:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    .line 39
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;->_builder:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->build()Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;->_client:Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->updateFolderPolicy(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;->_builder:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->withAclUpdatePolicy(Lcom/dropbox/core/v2/sharing/AclUpdatePolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    .line 64
    return-object p0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;->_builder:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    .line 122
    return-object p0
.end method

.method public withLinkSettings(Lcom/dropbox/core/v2/sharing/LinkSettings;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;->_builder:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->withLinkSettings(Lcom/dropbox/core/v2/sharing/LinkSettings;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    .line 103
    return-object p0
.end method

.method public withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;->_builder:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->withMemberPolicy(Lcom/dropbox/core/v2/sharing/MemberPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    .line 51
    return-object p0
.end method

.method public withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;->_builder:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->withSharedLinkPolicy(Lcom/dropbox/core/v2/sharing/SharedLinkPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    .line 91
    return-object p0
.end method

.method public withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;->_builder:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;->withViewerInfoPolicy(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    .line 77
    return-object p0
.end method
