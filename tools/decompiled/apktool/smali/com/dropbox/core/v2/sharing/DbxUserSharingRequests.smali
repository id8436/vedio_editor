.class public Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;
.super Ljava/lang/Object;
.source "DbxUserSharingRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 34
    return-void
.end method


# virtual methods
.method addFileMember(Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileMemberActionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/add_file_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;

    .line 53
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFileMemberError$Serializer;

    move-object v3, p1

    .line 48
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;

    const-string/jumbo v2, "2/sharing/add_file_member"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AddFileMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/AddFileMemberError;)V

    throw v1
.end method

.method public addFileMember(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileMemberActionResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->addFileMember(Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public addFileMemberBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberSelector;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/AddFileMemberArgs;->newBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/AddFileMemberBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/AddFileMemberArgs$Builder;)V

    return-object v1
.end method

.method addFolderMember(Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/add_folder_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Serializer;

    .line 126
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AddFolderMemberError$Serializer;

    move-object v3, p1

    .line 121
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;

    const-string/jumbo v2, "2/sharing/add_folder_member"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/AddFolderMemberError;)V

    throw v1
.end method

.method public addFolderMember(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/AddFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->addFolderMember(Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;)V

    .line 156
    return-void
.end method

.method public addFolderMemberBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/AddMember;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/sharing/AddFolderMemberArg;->newBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;

    move-result-object v0

    .line 179
    new-instance v1, Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/AddFolderMemberBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/AddFolderMemberArg$Builder;)V

    return-object v1
.end method

.method changeFileMemberAccess(Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;)Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/change_file_member_access"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    new-instance v1, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;

    const-string/jumbo v2, "2/sharing/change_file_member_access"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)V

    throw v1
.end method

.method public changeFileMemberAccess(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/FileMemberActionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 237
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->changeFileMemberAccess(Lcom/dropbox/core/v2/sharing/ChangeFileMemberAccessArgs;)Lcom/dropbox/core/v2/sharing/FileMemberActionResult;

    move-result-object v0

    return-object v0
.end method

.method checkJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/check_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/JobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/JobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/sharing/check_job_status"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public checkJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/JobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->checkJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/JobStatus;

    move-result-object v0

    return-object v0
.end method

.method checkRemoveMemberJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/check_remove_member_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/sharing/check_remove_member_job_status"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public checkRemoveMemberJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->checkRemoveMemberJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/RemoveMemberJobStatus;

    move-result-object v0

    return-object v0
.end method

.method checkShareJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/check_share_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/sharing/check_share_job_status"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/async/PollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/async/PollError;)V

    throw v1
.end method

.method public checkShareJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 362
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->checkShareJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object v0

    return-object v0
.end method

.method createSharedLink(Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/create_shared_link"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PathLinkMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    new-instance v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;

    const-string/jumbo v2, "2/sharing/create_shared_link"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/CreateSharedLinkError;)V

    throw v1
.end method

.method public createSharedLink(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->createSharedLink(Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;)Lcom/dropbox/core/v2/sharing/PathLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public createSharedLinkBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;

    move-result-object v0

    .line 456
    new-instance v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/CreateSharedLinkArg$Builder;)V

    return-object v1
.end method

.method createSharedLinkWithSettings(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/create_shared_link_with_settings"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    new-instance v1, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;

    const-string/jumbo v2, "2/sharing/create_shared_link_with_settings"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsError;)V

    throw v1
.end method

.method public createSharedLinkWithSettings(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 503
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->createSharedLinkWithSettings(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public createSharedLinkWithSettings(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)V

    .line 526
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->createSharedLinkWithSettings(Lcom/dropbox/core/v2/sharing/CreateSharedLinkWithSettingsArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method getFileMetadata(Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/get_file_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    new-instance v1, Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;

    const-string/jumbo v2, "2/sharing/get_file_metadata"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/GetFileMetadataError;)V

    throw v1
.end method

.method public getFileMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 569
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFileMetadata(Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getFileMetadata(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFileMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetFileMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 591
    if-eqz p2, :cond_1

    .line 592
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileAction;

    .line 593
    if-nez v0, :cond_0

    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFileMetadata(Lcom/dropbox/core/v2/sharing/GetFileMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    move-result-object v0

    return-object v0
.end method

.method getFileMetadataBatch(Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/get_file_metadata/batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult$Serializer;

    .line 619
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    move-object v3, p1

    .line 614
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 622
    :catch_0
    move-exception v0

    .line 623
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;

    const-string/jumbo v2, "2/sharing/get_file_metadata/batch"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharingUserError;)V

    throw v1
.end method

.method public getFileMetadataBatch(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 637
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;-><init>(Ljava/util/List;)V

    .line 638
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFileMetadataBatch(Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFileMetadataBatch(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FileAction;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 656
    if-eqz p2, :cond_1

    .line 657
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileAction;

    .line 658
    if-nez v0, :cond_0

    .line 659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 663
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 664
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFileMetadataBatch(Lcom/dropbox/core/v2/sharing/GetFileMetadataBatchArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getFolderMetadata(Lcom/dropbox/core/v2/sharing/GetMetadataArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/get_folder_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetMetadataArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;

    const-string/jumbo v2, "2/sharing/get_folder_metadata"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    throw v1
.end method

.method public getFolderMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 708
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFolderMetadata(Lcom/dropbox/core/v2/sharing/GetMetadataArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getFolderMetadata(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FolderAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 731
    if-eqz p2, :cond_1

    .line 732
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FolderAction;

    .line 733
    if-nez v0, :cond_0

    .line 734
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'actions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/GetMetadataArgs;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 739
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getFolderMetadata(Lcom/dropbox/core/v2/sharing/GetMetadataArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method getSharedLinkFile(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/get_shared_link_file"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 765
    :catch_0
    move-exception v0

    .line 766
    new-instance v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;

    const-string/jumbo v2, "2/sharing/get_shared_link_file"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/GetSharedLinkFileError;)V

    throw v1
.end method

.method public getSharedLinkFile(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinkFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 782
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;-><init>(Ljava/lang/String;)V

    .line 783
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getSharedLinkFile(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLinkFileBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkFileBuilder;
    .locals 2

    .prologue
    .line 798
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    move-result-object v0

    .line 799
    new-instance v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkFileBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;)V

    return-object v1
.end method

.method getSharedLinkMetadata(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 814
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/get_shared_link_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 822
    :catch_0
    move-exception v0

    .line 823
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;

    const-string/jumbo v2, "2/sharing/get_shared_link_metadata"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharedLinkError;)V

    throw v1
.end method

.method public getSharedLinkMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 838
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;-><init>(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getSharedLinkMetadata(Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLinkMetadataBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;
    .locals 2

    .prologue
    .line 854
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;

    move-result-object v0

    .line 855
    new-instance v1, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/GetSharedLinkMetadataArg$Builder;)V

    return-object v1
.end method

.method public getSharedLinks()Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 900
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;-><init>()V

    .line 901
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getSharedLinks(Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;

    move-result-object v0

    return-object v0
.end method

.method getSharedLinks(Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/get_shared_links"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/GetSharedLinksArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/GetSharedLinksResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GetSharedLinksError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 882
    :catch_0
    move-exception v0

    .line 883
    new-instance v1, Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;

    const-string/jumbo v2, "2/sharing/get_shared_links"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/GetSharedLinksError;)V

    throw v1
.end method

.method public getSharedLinks(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/GetSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 920
    new-instance v0, Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;-><init>(Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->getSharedLinks(Lcom/dropbox/core/v2/sharing/GetSharedLinksArg;)Lcom/dropbox/core/v2/sharing/GetSharedLinksResult;

    move-result-object v0

    return-object v0
.end method

.method listFileMembers(Lcom/dropbox/core/v2/sharing/ListFileMembersArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 943
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_file_members"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFileMembersError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;

    const-string/jumbo v2, "2/sharing/list_file_members"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFileMembersError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFileMembersError;)V

    throw v1
.end method

.method public listFileMembers(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 978
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;-><init>(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFileMembers(Lcom/dropbox/core/v2/sharing/ListFileMembersArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    move-result-object v0

    return-object v0
.end method

.method listFileMembersBatch(Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1018
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_file_members/batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult$Serializer;

    .line 1023
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    move-object v3, p1

    .line 1018
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;

    const-string/jumbo v2, "2/sharing/list_file_members/batch"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharingUserError;)V

    throw v1
.end method

.method public listFileMembersBatch(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1048
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;-><init>(Ljava/util/List;)V

    .line 1049
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFileMembersBatch(Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listFileMembersBatch(Ljava/util/List;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/ListFileMembersBatchResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1068
    const-wide/16 v0, 0x14

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 20L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;-><init>(Ljava/util/List;J)V

    .line 1072
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFileMembersBatch(Lcom/dropbox/core/v2/sharing/ListFileMembersBatchArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listFileMembersBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;
    .locals 2

    .prologue
    .line 998
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    move-result-object v0

    .line 999
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;)V

    return-object v1
.end method

.method listFileMembersContinue(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_file_members/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMembers$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;

    const-string/jumbo v2, "2/sharing/list_file_members/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFileMembersContinueError;)V

    throw v1
.end method

.method public listFileMembersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFileMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1131
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg;-><init>(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFileMembersContinue(Lcom/dropbox/core/v2/sharing/ListFileMembersContinueArg;)Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    move-result-object v0

    return-object v0
.end method

.method listFolderMembers(Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1148
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_folder_members"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;

    const-string/jumbo v2, "2/sharing/list_folder_members"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)V

    throw v1
.end method

.method public listFolderMembers(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharedFolderAccessErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1177
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;-><init>(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFolderMembers(Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    move-result-object v0

    return-object v0
.end method

.method public listFolderMembersBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;
    .locals 2

    .prologue
    .line 1195
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    move-result-object v0

    .line 1196
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;)V

    return-object v1
.end method

.method listFolderMembersContinue(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1214
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_folder_members/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;

    const-string/jumbo v2, "2/sharing/list_folder_members/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueError;)V

    throw v1
.end method

.method public listFolderMembersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1244
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg;-><init>(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFolderMembersContinue(Lcom/dropbox/core/v2/sharing/ListFolderMembersContinueArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    move-result-object v0

    return-object v0
.end method

.method public listFolders()Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1290
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;-><init>()V

    .line 1291
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFolders(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v0

    return-object v0
.end method

.method listFolders(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1264
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_folders"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;

    .line 1270
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 1264
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1272
    :catch_0
    move-exception v0

    .line 1273
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"list_folders\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v1
.end method

.method public listFoldersBuilder()Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;
    .locals 2

    .prologue
    .line 1302
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->newBuilder()Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    move-result-object v0

    .line 1303
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListFoldersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;)V

    return-object v1
.end method

.method listFoldersContinue(Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1326
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_folders/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1334
    :catch_0
    move-exception v0

    .line 1335
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;

    const-string/jumbo v2, "2/sharing/list_folders/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;)V

    throw v1
.end method

.method public listFoldersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1359
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;-><init>(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listFoldersContinue(Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v0

    return-object v0
.end method

.method public listMountableFolders()Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1405
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;-><init>()V

    .line 1406
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listMountableFolders(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v0

    return-object v0
.end method

.method listMountableFolders(Lcom/dropbox/core/v2/sharing/ListFoldersArgs;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_mountable_folders"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;

    .line 1385
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 1379
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"list_mountable_folders\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/dropbox/core/DbxApiException;-><init>(Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Ljava/lang/String;)V

    throw v1
.end method

.method public listMountableFoldersBuilder()Lcom/dropbox/core/v2/sharing/ListMountableFoldersBuilder;
    .locals 2

    .prologue
    .line 1417
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListFoldersArgs;->newBuilder()Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;

    move-result-object v0

    .line 1418
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListMountableFoldersBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListMountableFoldersBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFoldersArgs$Builder;)V

    return-object v1
.end method

.method listMountableFoldersContinue(Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1441
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_mountable_folders/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;

    const-string/jumbo v2, "2/sharing/list_mountable_folders/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;)V

    throw v1
.end method

.method public listMountableFoldersContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFoldersContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1474
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;-><init>(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listMountableFoldersContinue(Lcom/dropbox/core/v2/sharing/ListFoldersContinueArg;)Lcom/dropbox/core/v2/sharing/ListFoldersResult;

    move-result-object v0

    return-object v0
.end method

.method public listReceivedFiles()Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1520
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFilesArg;-><init>()V

    .line 1521
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listReceivedFiles(Lcom/dropbox/core/v2/sharing/ListFilesArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;

    move-result-object v0

    return-object v0
.end method

.method listReceivedFiles(Lcom/dropbox/core/v2/sharing/ListFilesArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/SharingUserErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1495
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_received_files"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFilesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFilesResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharingUserError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFilesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1503
    :catch_0
    move-exception v0

    .line 1504
    new-instance v1, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;

    const-string/jumbo v2, "2/sharing/list_received_files"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharingUserError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/SharingUserErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/SharingUserError;)V

    throw v1
.end method

.method public listReceivedFilesBuilder()Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;
    .locals 2

    .prologue
    .line 1533
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListFilesArg;->newBuilder()Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;

    move-result-object v0

    .line 1534
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListReceivedFilesBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListFilesArg$Builder;)V

    return-object v1
.end method

.method listReceivedFilesContinue(Lcom/dropbox/core/v2/sharing/ListFilesContinueArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1553
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_received_files/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListFilesContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListFilesResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFilesContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFilesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1561
    :catch_0
    move-exception v0

    .line 1562
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;

    const-string/jumbo v2, "2/sharing/list_received_files/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListFilesContinueError;)V

    throw v1
.end method

.method public listReceivedFilesContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFilesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListFilesContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1580
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFilesContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ListFilesContinueArg;-><init>(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listReceivedFilesContinue(Lcom/dropbox/core/v2/sharing/ListFilesContinueArg;)Lcom/dropbox/core/v2/sharing/ListFilesResult;

    move-result-object v0

    return-object v0
.end method

.method public listSharedLinks()Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1621
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;-><init>()V

    .line 1622
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->listSharedLinks(Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;)Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;

    move-result-object v0

    return-object v0
.end method

.method listSharedLinks(Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;)Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1599
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/list_shared_links"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListSharedLinksError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1607
    :catch_0
    move-exception v0

    .line 1608
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;

    const-string/jumbo v2, "2/sharing/list_shared_links"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ListSharedLinksError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ListSharedLinksError;)V

    throw v1
.end method

.method public listSharedLinksBuilder()Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;
    .locals 2

    .prologue
    .line 1637
    invoke-static {}, Lcom/dropbox/core/v2/sharing/ListSharedLinksArg;->newBuilder()Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;

    move-result-object v0

    .line 1638
    new-instance v1, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ListSharedLinksBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ListSharedLinksArg$Builder;)V

    return-object v1
.end method

.method modifySharedLinkSettings(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1659
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/modify_shared_link_settings"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedLinkMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    new-instance v1, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;

    const-string/jumbo v2, "2/sharing/modify_shared_link_settings"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsError;)V

    throw v1
.end method

.method public modifySharedLinkSettings(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1696
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;)V

    .line 1697
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->modifySharedLinkSettings(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method public modifySharedLinkSettings(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Z)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1722
    new-instance v0, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/SharedLinkSettings;Z)V

    .line 1723
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->modifySharedLinkSettings(Lcom/dropbox/core/v2/sharing/ModifySharedLinkSettingsArgs;)Lcom/dropbox/core/v2/sharing/SharedLinkMetadata;

    move-result-object v0

    return-object v0
.end method

.method mountFolder(Lcom/dropbox/core/v2/sharing/MountFolderArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/MountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1742
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/mount_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/MountFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MountFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MountFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1750
    :catch_0
    move-exception v0

    .line 1751
    new-instance v1, Lcom/dropbox/core/v2/sharing/MountFolderErrorException;

    const-string/jumbo v2, "2/sharing/mount_folder"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MountFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/MountFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/MountFolderError;)V

    throw v1
.end method

.method public mountFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/MountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1771
    new-instance v0, Lcom/dropbox/core/v2/sharing/MountFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/MountFolderArg;-><init>(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->mountFolder(Lcom/dropbox/core/v2/sharing/MountFolderArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method relinquishFileMembership(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1788
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/relinquish_file_membership"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg$Serializer;

    .line 1793
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError$Serializer;

    move-object v3, p1

    .line 1788
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    return-void

    .line 1796
    :catch_0
    move-exception v0

    .line 1797
    new-instance v1, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;

    const-string/jumbo v2, "2/sharing/relinquish_file_membership"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipError;)V

    throw v1
.end method

.method public relinquishFileMembership(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1815
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg;-><init>(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->relinquishFileMembership(Lcom/dropbox/core/v2/sharing/RelinquishFileMembershipArg;)V

    .line 1817
    return-void
.end method

.method relinquishFolderMembership(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1838
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/relinquish_folder_membership"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1846
    :catch_0
    move-exception v0

    .line 1847
    new-instance v1, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;

    const-string/jumbo v2, "2/sharing/relinquish_folder_membership"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipError;)V

    throw v1
.end method

.method public relinquishFolderMembership(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1873
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;-><init>(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->relinquishFolderMembership(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v0

    return-object v0
.end method

.method public relinquishFolderMembership(Ljava/lang/String;Z)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1898
    new-instance v0, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;-><init>(Ljava/lang/String;Z)V

    .line 1899
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->relinquishFolderMembership(Lcom/dropbox/core/v2/sharing/RelinquishFolderMembershipArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v0

    return-object v0
.end method

.method removeFileMember(Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1914
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/remove_file_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    new-instance v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;

    const-string/jumbo v2, "2/sharing/remove_file_member"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)V

    throw v1
.end method

.method public removeFileMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1948
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 1949
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->removeFileMember(Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;)Lcom/dropbox/core/v2/sharing/FileMemberActionIndividualResult;

    move-result-object v0

    return-object v0
.end method

.method removeFileMember2(Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1964
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/remove_file_member_2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFileMemberError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1972
    :catch_0
    move-exception v0

    .line 1973
    new-instance v1, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;

    const-string/jumbo v2, "2/sharing/remove_file_member_2"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RemoveFileMemberError;)V

    throw v1
.end method

.method public removeFileMember2(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFileMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1993
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V

    .line 1994
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->removeFileMember2(Lcom/dropbox/core/v2/sharing/RemoveFileMemberArg;)Lcom/dropbox/core/v2/sharing/FileMemberRemoveActionResult;

    move-result-object v0

    return-object v0
.end method

.method removeFolderMember(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;)Lcom/dropbox/core/v2/async/LaunchResultBase;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2015
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/remove_folder_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchResultBase$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/LaunchResultBase;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2023
    :catch_0
    move-exception v0

    .line 2024
    new-instance v1, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;

    const-string/jumbo v2, "2/sharing/remove_folder_member"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RemoveFolderMemberError;)V

    throw v1
.end method

.method public removeFolderMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Z)Lcom/dropbox/core/v2/async/LaunchResultBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RemoveFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2052
    new-instance v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Z)V

    .line 2053
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->removeFolderMember(Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;)Lcom/dropbox/core/v2/async/LaunchResultBase;

    move-result-object v0

    return-object v0
.end method

.method revokeSharedLink(Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2071
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/revoke_shared_link"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg$Serializer;

    .line 2076
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError$Serializer;

    move-object v3, p1

    .line 2071
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2082
    return-void

    .line 2079
    :catch_0
    move-exception v0

    .line 2080
    new-instance v1, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;

    const-string/jumbo v2, "2/sharing/revoke_shared_link"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/RevokeSharedLinkError;)V

    throw v1
.end method

.method public revokeSharedLink(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/RevokeSharedLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2098
    new-instance v0, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg;-><init>(Ljava/lang/String;)V

    .line 2099
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->revokeSharedLink(Lcom/dropbox/core/v2/sharing/RevokeSharedLinkArg;)V

    .line 2100
    return-void
.end method

.method shareFolder(Lcom/dropbox/core/v2/sharing/ShareFolderArg;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2118
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/share_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2126
    :catch_0
    move-exception v0

    .line 2127
    new-instance v1, Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;

    const-string/jumbo v2, "2/sharing/share_folder"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/ShareFolderError;)V

    throw v1
.end method

.method public shareFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/ShareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2151
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;-><init>(Ljava/lang/String;)V

    .line 2152
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->shareFolder(Lcom/dropbox/core/v2/sharing/ShareFolderArg;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object v0

    return-object v0
.end method

.method public shareFolderBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;
    .locals 2

    .prologue
    .line 2175
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ShareFolderArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;

    move-result-object v0

    .line 2176
    new-instance v1, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/ShareFolderBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/ShareFolderArg$Builder;)V

    return-object v1
.end method

.method transferFolder(Lcom/dropbox/core/v2/sharing/TransferFolderArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2192
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/transfer_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/TransferFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TransferFolderArg$Serializer;

    .line 2197
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/TransferFolderError$Serializer;

    move-object v3, p1

    .line 2192
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2203
    return-void

    .line 2200
    :catch_0
    move-exception v0

    .line 2201
    new-instance v1, Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;

    const-string/jumbo v2, "2/sharing/transfer_folder"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/TransferFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/TransferFolderError;)V

    throw v1
.end method

.method public transferFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/TransferFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2220
    new-instance v0, Lcom/dropbox/core/v2/sharing/TransferFolderArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/TransferFolderArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->transferFolder(Lcom/dropbox/core/v2/sharing/TransferFolderArg;)V

    .line 2222
    return-void
.end method

.method unmountFolder(Lcom/dropbox/core/v2/sharing/UnmountFolderArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2237
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/unmount_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UnmountFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnmountFolderArg$Serializer;

    .line 2242
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;

    move-object v3, p1

    .line 2237
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2248
    return-void

    .line 2245
    :catch_0
    move-exception v0

    .line 2246
    new-instance v1, Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;

    const-string/jumbo v2, "2/sharing/unmount_folder"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UnmountFolderError;)V

    throw v1
.end method

.method public unmountFolder(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnmountFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2263
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/UnmountFolderArg;-><init>(Ljava/lang/String;)V

    .line 2264
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->unmountFolder(Lcom/dropbox/core/v2/sharing/UnmountFolderArg;)V

    .line 2265
    return-void
.end method

.method unshareFile(Lcom/dropbox/core/v2/sharing/UnshareFileArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2279
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/unshare_file"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UnshareFileArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFileArg$Serializer;

    .line 2284
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFileError$Serializer;

    move-object v3, p1

    .line 2279
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2290
    return-void

    .line 2287
    :catch_0
    move-exception v0

    .line 2288
    new-instance v1, Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;

    const-string/jumbo v2, "2/sharing/unshare_file"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UnshareFileError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UnshareFileError;)V

    throw v1
.end method

.method public unshareFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2303
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFileArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/UnshareFileArg;-><init>(Ljava/lang/String;)V

    .line 2304
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->unshareFile(Lcom/dropbox/core/v2/sharing/UnshareFileArg;)V

    .line 2305
    return-void
.end method

.method unshareFolder(Lcom/dropbox/core/v2/sharing/UnshareFolderArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2324
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/unshare_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2332
    :catch_0
    move-exception v0

    .line 2333
    new-instance v1, Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;

    const-string/jumbo v2, "2/sharing/unshare_folder"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UnshareFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UnshareFolderError;)V

    throw v1
.end method

.method public unshareFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2357
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;-><init>(Ljava/lang/String;)V

    .line 2358
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->unshareFolder(Lcom/dropbox/core/v2/sharing/UnshareFolderArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v0

    return-object v0
.end method

.method public unshareFolder(Ljava/lang/String;Z)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UnshareFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2382
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;-><init>(Ljava/lang/String;Z)V

    .line 2383
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->unshareFolder(Lcom/dropbox/core/v2/sharing/UnshareFolderArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v0

    return-object v0
.end method

.method updateFileMember(Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2401
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/update_file_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FileMemberActionError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2409
    :catch_0
    move-exception v0

    .line 2410
    new-instance v1, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;

    const-string/jumbo v2, "2/sharing/update_file_member"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FileMemberActionError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/FileMemberActionError;)V

    throw v1
.end method

.method public updateFileMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/FileMemberActionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2433
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 2434
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->updateFileMember(Lcom/dropbox/core/v2/sharing/UpdateFileMemberArgs;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v0

    return-object v0
.end method

.method updateFolderMember(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2451
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/update_folder_member"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2459
    :catch_0
    move-exception v0

    .line 2460
    new-instance v1, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;

    const-string/jumbo v2, "2/sharing/update_folder_member"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UpdateFolderMemberError;)V

    throw v1
.end method

.method public updateFolderMember(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderMemberErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2484
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V

    .line 2485
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->updateFolderMember(Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;)Lcom/dropbox/core/v2/sharing/MemberAccessLevelResult;

    move-result-object v0

    return-object v0
.end method

.method updateFolderPolicy(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2505
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/sharing/update_folder_policy"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2513
    :catch_0
    move-exception v0

    .line 2514
    new-instance v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;

    const-string/jumbo v2, "2/sharing/update_folder_policy"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyError;)V

    throw v1
.end method

.method public updateFolderPolicy(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2533
    new-instance v0, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;-><init>(Ljava/lang/String;)V

    .line 2534
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;->updateFolderPolicy(Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public updateFolderPolicyBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;
    .locals 2

    .prologue
    .line 2552
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;

    move-result-object v0

    .line 2553
    new-instance v1, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyBuilder;-><init>(Lcom/dropbox/core/v2/sharing/DbxUserSharingRequests;Lcom/dropbox/core/v2/sharing/UpdateFolderPolicyArg$Builder;)V

    return-object v1
.end method
