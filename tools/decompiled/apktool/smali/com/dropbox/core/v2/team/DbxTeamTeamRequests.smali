.class public Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;
.super Ljava/lang/Object;
.source "DbxTeamTeamRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 43
    return-void
.end method


# virtual methods
.method devicesListMemberDevices(Lcom/dropbox/core/v2/team/ListMemberDevicesArg;)Lcom/dropbox/core/v2/team/ListMemberDevicesResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMemberDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/devices/list_member_devices"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberDevicesResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/ListMemberDevicesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberDevicesError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListMemberDevicesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Lcom/dropbox/core/v2/team/ListMemberDevicesErrorException;

    const-string/jumbo v2, "2/team/devices/list_member_devices"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListMemberDevicesError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/ListMemberDevicesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListMemberDevicesError;)V

    throw v1
.end method

.method public devicesListMemberDevices(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMemberDevicesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMemberDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->devicesListMemberDevices(Lcom/dropbox/core/v2/team/ListMemberDevicesArg;)Lcom/dropbox/core/v2/team/ListMemberDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method public devicesListMemberDevicesBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;
    .locals 2

    .prologue
    .line 96
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;)V

    return-object v1
.end method

.method public devicesListMembersDevices()Lcom/dropbox/core/v2/team/ListMembersDevicesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;-><init>()V

    .line 131
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->devicesListMembersDevices(Lcom/dropbox/core/v2/team/ListMembersDevicesArg;)Lcom/dropbox/core/v2/team/ListMembersDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method devicesListMembersDevices(Lcom/dropbox/core/v2/team/ListMembersDevicesArg;)Lcom/dropbox/core/v2/team/ListMembersDevicesResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/devices/list_members_devices"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/ListMembersDevicesResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersDevicesResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/ListMembersDevicesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersDevicesError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListMembersDevicesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    new-instance v1, Lcom/dropbox/core/v2/team/ListMembersDevicesErrorException;

    const-string/jumbo v2, "2/team/devices/list_members_devices"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListMembersDevicesError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/ListMembersDevicesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListMembersDevicesError;)V

    throw v1
.end method

.method public devicesListMembersDevicesBuilder()Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->newBuilder()Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;

    move-result-object v0

    .line 142
    new-instance v1, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/DevicesListMembersDevicesBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Builder;)V

    return-object v1
.end method

.method public devicesListTeamDevices()Lcom/dropbox/core/v2/team/ListTeamDevicesResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/dropbox/core/v2/team/ListTeamDevicesArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg;-><init>()V

    .line 180
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->devicesListTeamDevices(Lcom/dropbox/core/v2/team/ListTeamDevicesArg;)Lcom/dropbox/core/v2/team/ListTeamDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method devicesListTeamDevices(Lcom/dropbox/core/v2/team/ListTeamDevicesArg;)Lcom/dropbox/core/v2/team/ListTeamDevicesResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/devices/list_team_devices"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/ListTeamDevicesResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListTeamDevicesResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/ListTeamDevicesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListTeamDevicesError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListTeamDevicesResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Lcom/dropbox/core/v2/team/ListTeamDevicesErrorException;

    const-string/jumbo v2, "2/team/devices/list_team_devices"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListTeamDevicesError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/ListTeamDevicesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListTeamDevicesError;)V

    throw v1
.end method

.method public devicesListTeamDevicesBuilder()Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    invoke-static {}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg;->newBuilder()Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    move-result-object v0

    .line 195
    new-instance v1, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;)V

    return-object v1
.end method

.method public devicesRevokeDeviceSession(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeDeviceSessionErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/devices/revoke_device_session"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;

    .line 213
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/RevokeDeviceSessionError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionError$Serializer;

    move-object v3, p1

    .line 208
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    new-instance v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionErrorException;

    const-string/jumbo v2, "2/team/devices/revoke_device_session"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/RevokeDeviceSessionError;)V

    throw v1
.end method

.method devicesRevokeDeviceSessionBatch(Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/devices/revoke_device_session_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    new-instance v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchErrorException;

    const-string/jumbo v2, "2/team/devices/revoke_device_session_batch"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchError;)V

    throw v1
.end method

.method public devicesRevokeDeviceSessionBatch(Ljava/util/List;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;",
            ">;)",
            "Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchArg;-><init>(Ljava/util/List;)V

    .line 255
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->devicesRevokeDeviceSessionBatch(Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionBatchResult;

    move-result-object v0

    return-object v0
.end method

.method featuresGetValues(Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchArg;)Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/features/get_values"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    new-instance v1, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchErrorException;

    const-string/jumbo v2, "2/team/features/get_values"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchError;)V

    throw v1
.end method

.method public featuresGetValues(Ljava/util/List;)Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/Feature;",
            ">;)",
            "Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 296
    new-instance v0, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchArg;-><init>(Ljava/util/List;)V

    .line 297
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->featuresGetValues(Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchArg;)Lcom/dropbox/core/v2/team/FeaturesGetValuesBatchResult;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lcom/dropbox/core/v2/team/TeamGetInfoResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/get_info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 313
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamGetInfoResult$Serializer;

    .line 315
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    .line 309
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamGetInfoResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 317
    :catch_0
    move-exception v0

    .line 318
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"get_info\":"

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

.method groupsCreate(Lcom/dropbox/core/v2/team/GroupCreateArg;)Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/create"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupCreateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupCreateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupCreateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupCreateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupFullInfo;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 343
    :catch_0
    move-exception v0

    .line 344
    new-instance v1, Lcom/dropbox/core/v2/team/GroupCreateErrorException;

    const-string/jumbo v2, "2/team/groups/create"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupCreateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupCreateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupCreateError;)V

    throw v1
.end method

.method public groupsCreate(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Lcom/dropbox/core/v2/team/GroupCreateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/GroupCreateArg;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsCreate(Lcom/dropbox/core/v2/team/GroupCreateArg;)Lcom/dropbox/core/v2/team/GroupFullInfo;

    move-result-object v0

    return-object v0
.end method

.method public groupsCreateBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsCreateBuilder;
    .locals 2

    .prologue
    .line 377
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupCreateArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;

    move-result-object v0

    .line 378
    new-instance v1, Lcom/dropbox/core/v2/team/GroupsCreateBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/GroupsCreateBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/GroupCreateArg$Builder;)V

    return-object v1
.end method

.method public groupsDelete(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupDeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelector$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupDeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupDeleteError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    new-instance v1, Lcom/dropbox/core/v2/team/GroupDeleteErrorException;

    const-string/jumbo v2, "2/team/groups/delete"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupDeleteError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupDeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupDeleteError;)V

    throw v1
.end method

.method public groupsGetInfo(Lcom/dropbox/core/v2/team/GroupsSelector;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupsSelector;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/GroupsGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsGetInfoErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/get_info"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsSelector$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;

    .line 432
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/GroupsGetInfoError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsGetInfoError$Serializer;

    move-object v3, p1

    .line 427
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    new-instance v1, Lcom/dropbox/core/v2/team/GroupsGetInfoErrorException;

    const-string/jumbo v2, "2/team/groups/get_info"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupsGetInfoError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupsGetInfoError;)V

    throw v1
.end method

.method groupsJobStatusGet(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/async/PollEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsPollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/job_status/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/PollEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsPollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    new-instance v1, Lcom/dropbox/core/v2/team/GroupsPollErrorException;

    const-string/jumbo v2, "2/team/groups/job_status/get"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupsPollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupsPollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupsPollError;)V

    throw v1
.end method

.method public groupsJobStatusGet(Ljava/lang/String;)Lcom/dropbox/core/v2/async/PollEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsPollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsJobStatusGet(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/async/PollEmptyResult;

    move-result-object v0

    return-object v0
.end method

.method public groupsList()Lcom/dropbox/core/v2/team/GroupsListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 530
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsListArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsListArg;-><init>()V

    .line 531
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsList(Lcom/dropbox/core/v2/team/GroupsListArg;)Lcom/dropbox/core/v2/team/GroupsListResult;

    move-result-object v0

    return-object v0
.end method

.method public groupsList(J)Lcom/dropbox/core/v2/team/GroupsListResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 544
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsListArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/GroupsListArg;-><init>(J)V

    .line 551
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsList(Lcom/dropbox/core/v2/team/GroupsListArg;)Lcom/dropbox/core/v2/team/GroupsListResult;

    move-result-object v0

    return-object v0
.end method

.method groupsList(Lcom/dropbox/core/v2/team/GroupsListArg;)Lcom/dropbox/core/v2/team/GroupsListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupsListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsListArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupsListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsListResult$Serializer;

    .line 516
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 510
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupsListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"groups/list\":"

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

.method groupsListContinue(Lcom/dropbox/core/v2/team/GroupsListContinueArg;)Lcom/dropbox/core/v2/team/GroupsListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupsListContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsListContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupsListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsListResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupsListContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsListContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupsListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    new-instance v1, Lcom/dropbox/core/v2/team/GroupsListContinueErrorException;

    const-string/jumbo v2, "2/team/groups/list/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupsListContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupsListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupsListContinueError;)V

    throw v1
.end method

.method public groupsListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 591
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsListContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/GroupsListContinueArg;-><init>(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsListContinue(Lcom/dropbox/core/v2/team/GroupsListContinueArg;)Lcom/dropbox/core/v2/team/GroupsListResult;

    move-result-object v0

    return-object v0
.end method

.method groupsMembersAdd(Lcom/dropbox/core/v2/team/GroupMembersAddArg;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersAddErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/members/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersAddError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    new-instance v1, Lcom/dropbox/core/v2/team/GroupMembersAddErrorException;

    const-string/jumbo v2, "2/team/groups/members/add"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupMembersAddError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupMembersAddErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupMembersAddError;)V

    throw v1
.end method

.method public groupsMembersAdd(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersChangeResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersAddErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 649
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/GroupMembersAddArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;)V

    .line 650
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsMembersAdd(Lcom/dropbox/core/v2/team/GroupMembersAddArg;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;

    move-result-object v0

    return-object v0
.end method

.method public groupsMembersAdd(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAccess;",
            ">;Z)",
            "Lcom/dropbox/core/v2/team/GroupMembersChangeResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersAddErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 676
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersAddArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupMembersAddArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)V

    .line 677
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsMembersAdd(Lcom/dropbox/core/v2/team/GroupMembersAddArg;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;

    move-result-object v0

    return-object v0
.end method

.method public groupsMembersList(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupSelectorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 716
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/GroupsMembersListArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;)V

    .line 717
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsMembersList(Lcom/dropbox/core/v2/team/GroupsMembersListArg;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;

    move-result-object v0

    return-object v0
.end method

.method public groupsMembersList(Lcom/dropbox/core/v2/team/GroupSelector;J)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupSelectorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 732
    const-wide/16 v0, 0x1

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 736
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsMembersListArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupsMembersListArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;J)V

    .line 739
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsMembersList(Lcom/dropbox/core/v2/team/GroupsMembersListArg;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;

    move-result-object v0

    return-object v0
.end method

.method groupsMembersList(Lcom/dropbox/core/v2/team/GroupsMembersListArg;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupSelectorErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 690
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/members/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupSelectorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupSelectorError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    new-instance v1, Lcom/dropbox/core/v2/team/GroupSelectorErrorException;

    const-string/jumbo v2, "2/team/groups/members/list"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupSelectorError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupSelectorErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupSelectorError;)V

    throw v1
.end method

.method groupsMembersListContinue(Lcom/dropbox/core/v2/team/GroupsMembersListContinueArg;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsMembersListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 754
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/members/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupsMembersListContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupsMembersListContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsMembersListContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 762
    :catch_0
    move-exception v0

    .line 763
    new-instance v1, Lcom/dropbox/core/v2/team/GroupsMembersListContinueErrorException;

    const-string/jumbo v2, "2/team/groups/members/list/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupsMembersListContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupsMembersListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupsMembersListContinueError;)V

    throw v1
.end method

.method public groupsMembersListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupsMembersListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 779
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsMembersListContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/GroupsMembersListContinueArg;-><init>(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsMembersListContinue(Lcom/dropbox/core/v2/team/GroupsMembersListContinueArg;)Lcom/dropbox/core/v2/team/GroupsMembersListResult;

    move-result-object v0

    return-object v0
.end method

.method groupsMembersRemove(Lcom/dropbox/core/v2/team/GroupMembersRemoveArg;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/members/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupMembersRemoveArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersRemoveArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersRemoveError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    new-instance v1, Lcom/dropbox/core/v2/team/GroupMembersRemoveErrorException;

    const-string/jumbo v2, "2/team/groups/members/remove"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupMembersRemoveErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupMembersRemoveError;)V

    throw v1
.end method

.method public groupsMembersRemove(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;)",
            "Lcom/dropbox/core/v2/team/GroupMembersChangeResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 842
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/GroupMembersRemoveArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;)V

    .line 843
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsMembersRemove(Lcom/dropbox/core/v2/team/GroupMembersRemoveArg;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;

    move-result-object v0

    return-object v0
.end method

.method public groupsMembersRemove(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;Z)",
            "Lcom/dropbox/core/v2/team/GroupMembersChangeResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 871
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersRemoveArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupMembersRemoveArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Ljava/util/List;Z)V

    .line 872
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsMembersRemove(Lcom/dropbox/core/v2/team/GroupMembersRemoveArg;)Lcom/dropbox/core/v2/team/GroupMembersChangeResult;

    move-result-object v0

    return-object v0
.end method

.method groupsMembersSetAccessType(Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/GroupsGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 886
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/members/set_access_type"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;

    .line 891
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError$Serializer;

    move-object v3, p1

    .line 886
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    new-instance v1, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException;

    const-string/jumbo v2, "2/team/groups/members/set_access_type"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeError;)V

    throw v1
.end method

.method public groupsMembersSetAccessType(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            "Lcom/dropbox/core/v2/team/GroupAccessType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/GroupsGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 920
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;)V

    .line 921
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsMembersSetAccessType(Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public groupsMembersSetAccessType(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/GroupSelector;",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            "Lcom/dropbox/core/v2/team/GroupAccessType;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/GroupsGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupMemberSetAccessTypeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 943
    new-instance v0, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/GroupAccessType;Z)V

    .line 944
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsMembersSetAccessType(Lcom/dropbox/core/v2/team/GroupMembersSetAccessTypeArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public groupsUpdate(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 988
    new-instance v0, Lcom/dropbox/core/v2/team/GroupUpdateArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs;-><init>(Lcom/dropbox/core/v2/team/GroupSelector;)V

    .line 989
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->groupsUpdate(Lcom/dropbox/core/v2/team/GroupUpdateArgs;)Lcom/dropbox/core/v2/team/GroupFullInfo;

    move-result-object v0

    return-object v0
.end method

.method groupsUpdate(Lcom/dropbox/core/v2/team/GroupUpdateArgs;)Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/GroupUpdateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/groups/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupUpdateArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupFullInfo$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupUpdateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupFullInfo;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 968
    :catch_0
    move-exception v0

    .line 969
    new-instance v1, Lcom/dropbox/core/v2/team/GroupUpdateErrorException;

    const-string/jumbo v2, "2/team/groups/update"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GroupUpdateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/GroupUpdateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/GroupUpdateError;)V

    throw v1
.end method

.method public groupsUpdateBuilder(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;
    .locals 2

    .prologue
    .line 1005
    invoke-static {p1}, Lcom/dropbox/core/v2/team/GroupUpdateArgs;->newBuilder(Lcom/dropbox/core/v2/team/GroupSelector;)Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;

    move-result-object v0

    .line 1006
    new-instance v1, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/GroupsUpdateBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/GroupUpdateArgs$Builder;)V

    return-object v1
.end method

.method linkedAppsListMemberLinkedApps(Lcom/dropbox/core/v2/team/ListMemberAppsArg;)Lcom/dropbox/core/v2/team/ListMemberAppsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMemberAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/linked_apps/list_member_linked_apps"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ListMemberAppsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberAppsArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/ListMemberAppsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberAppsResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMemberAppsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListMemberAppsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    new-instance v1, Lcom/dropbox/core/v2/team/ListMemberAppsErrorException;

    const-string/jumbo v2, "2/team/linked_apps/list_member_linked_apps"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListMemberAppsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/ListMemberAppsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListMemberAppsError;)V

    throw v1
.end method

.method public linkedAppsListMemberLinkedApps(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMemberAppsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMemberAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1043
    new-instance v0, Lcom/dropbox/core/v2/team/ListMemberAppsArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ListMemberAppsArg;-><init>(Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->linkedAppsListMemberLinkedApps(Lcom/dropbox/core/v2/team/ListMemberAppsArg;)Lcom/dropbox/core/v2/team/ListMemberAppsResult;

    move-result-object v0

    return-object v0
.end method

.method public linkedAppsListMembersLinkedApps()Lcom/dropbox/core/v2/team/ListMembersAppsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1084
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersAppsArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ListMembersAppsArg;-><init>()V

    .line 1085
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->linkedAppsListMembersLinkedApps(Lcom/dropbox/core/v2/team/ListMembersAppsArg;)Lcom/dropbox/core/v2/team/ListMembersAppsResult;

    move-result-object v0

    return-object v0
.end method

.method linkedAppsListMembersLinkedApps(Lcom/dropbox/core/v2/team/ListMembersAppsArg;)Lcom/dropbox/core/v2/team/ListMembersAppsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/linked_apps/list_members_linked_apps"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ListMembersAppsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersAppsArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/ListMembersAppsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersAppsResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/ListMembersAppsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersAppsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListMembersAppsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    new-instance v1, Lcom/dropbox/core/v2/team/ListMembersAppsErrorException;

    const-string/jumbo v2, "2/team/linked_apps/list_members_linked_apps"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListMembersAppsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/ListMembersAppsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListMembersAppsError;)V

    throw v1
.end method

.method public linkedAppsListMembersLinkedApps(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListMembersAppsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMembersAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1102
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersAppsArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ListMembersAppsArg;-><init>(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->linkedAppsListMembersLinkedApps(Lcom/dropbox/core/v2/team/ListMembersAppsArg;)Lcom/dropbox/core/v2/team/ListMembersAppsResult;

    move-result-object v0

    return-object v0
.end method

.method public linkedAppsListTeamLinkedApps()Lcom/dropbox/core/v2/team/ListTeamAppsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1147
    new-instance v0, Lcom/dropbox/core/v2/team/ListTeamAppsArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ListTeamAppsArg;-><init>()V

    .line 1148
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->linkedAppsListTeamLinkedApps(Lcom/dropbox/core/v2/team/ListTeamAppsArg;)Lcom/dropbox/core/v2/team/ListTeamAppsResult;

    move-result-object v0

    return-object v0
.end method

.method linkedAppsListTeamLinkedApps(Lcom/dropbox/core/v2/team/ListTeamAppsArg;)Lcom/dropbox/core/v2/team/ListTeamAppsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1122
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/linked_apps/list_team_linked_apps"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/ListTeamAppsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListTeamAppsArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/ListTeamAppsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListTeamAppsResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/ListTeamAppsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListTeamAppsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListTeamAppsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    new-instance v1, Lcom/dropbox/core/v2/team/ListTeamAppsErrorException;

    const-string/jumbo v2, "2/team/linked_apps/list_team_linked_apps"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/ListTeamAppsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/ListTeamAppsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/ListTeamAppsError;)V

    throw v1
.end method

.method public linkedAppsListTeamLinkedApps(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListTeamAppsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamAppsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1169
    new-instance v0, Lcom/dropbox/core/v2/team/ListTeamAppsArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/ListTeamAppsArg;-><init>(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->linkedAppsListTeamLinkedApps(Lcom/dropbox/core/v2/team/ListTeamAppsArg;)Lcom/dropbox/core/v2/team/ListTeamAppsResult;

    move-result-object v0

    return-object v0
.end method

.method linkedAppsRevokeLinkedApp(Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeLinkedAppErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1183
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/linked_apps/revoke_linked_app"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$Serializer;

    .line 1188
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/RevokeLinkedAppError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppError$Serializer;

    move-object v3, p1

    .line 1183
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    return-void

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    new-instance v1, Lcom/dropbox/core/v2/team/RevokeLinkedAppErrorException;

    const-string/jumbo v2, "2/team/linked_apps/revoke_linked_app"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/RevokeLinkedAppErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/RevokeLinkedAppError;)V

    throw v1
.end method

.method public linkedAppsRevokeLinkedApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeLinkedAppErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1211
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->linkedAppsRevokeLinkedApp(Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;)V

    .line 1213
    return-void
.end method

.method public linkedAppsRevokeLinkedApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeLinkedAppErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1228
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1229
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->linkedAppsRevokeLinkedApp(Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;)V

    .line 1230
    return-void
.end method

.method linkedAppsRevokeLinkedAppBatch(Lcom/dropbox/core/v2/team/RevokeLinkedApiAppBatchArg;)Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1242
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/linked_apps/revoke_linked_app_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedApiAppBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1250
    :catch_0
    move-exception v0

    .line 1251
    new-instance v1, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchErrorException;

    const-string/jumbo v2, "2/team/linked_apps/revoke_linked_app_batch"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchError;)V

    throw v1
.end method

.method public linkedAppsRevokeLinkedAppBatch(Ljava/util/List;)Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;",
            ">;)",
            "Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1265
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppBatchArg;-><init>(Ljava/util/List;)V

    .line 1266
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->linkedAppsRevokeLinkedAppBatch(Lcom/dropbox/core/v2/team/RevokeLinkedApiAppBatchArg;)Lcom/dropbox/core/v2/team/RevokeLinkedAppBatchResult;

    move-result-object v0

    return-object v0
.end method

.method memberSpaceLimitsGetCustomQuota(Lcom/dropbox/core/v2/team/CustomQuotaUsersArg;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/CustomQuotaUsersArg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/CustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/CustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1280
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/member_space_limits/get_custom_quota"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/CustomQuotaUsersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaUsersArg$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;

    .line 1285
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;

    move-object v3, p1

    .line 1280
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1288
    :catch_0
    move-exception v0

    .line 1289
    new-instance v1, Lcom/dropbox/core/v2/team/CustomQuotaErrorException;

    const-string/jumbo v2, "2/team/member_space_limits/get_custom_quota"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/CustomQuotaError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/CustomQuotaErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/CustomQuotaError;)V

    throw v1
.end method

.method public memberSpaceLimitsGetCustomQuota(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/CustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/CustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1304
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaUsersArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/CustomQuotaUsersArg;-><init>(Ljava/util/List;)V

    .line 1305
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->memberSpaceLimitsGetCustomQuota(Lcom/dropbox/core/v2/team/CustomQuotaUsersArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method memberSpaceLimitsRemoveCustomQuota(Lcom/dropbox/core/v2/team/CustomQuotaUsersArg;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/CustomQuotaUsersArg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/CustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1319
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/member_space_limits/remove_custom_quota"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/CustomQuotaUsersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaUsersArg$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult$Serializer;

    .line 1324
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;

    move-object v3, p1

    .line 1319
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    new-instance v1, Lcom/dropbox/core/v2/team/CustomQuotaErrorException;

    const-string/jumbo v2, "2/team/member_space_limits/remove_custom_quota"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/CustomQuotaError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/CustomQuotaErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/CustomQuotaError;)V

    throw v1
.end method

.method public memberSpaceLimitsRemoveCustomQuota(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/RemoveCustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/CustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1343
    new-instance v0, Lcom/dropbox/core/v2/team/CustomQuotaUsersArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/CustomQuotaUsersArg;-><init>(Ljava/util/List;)V

    .line 1344
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->memberSpaceLimitsRemoveCustomQuota(Lcom/dropbox/core/v2/team/CustomQuotaUsersArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method memberSpaceLimitsSetCustomQuota(Lcom/dropbox/core/v2/team/SetCustomQuotaArg;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/SetCustomQuotaArg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/CustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/CustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1358
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/member_space_limits/set_custom_quota"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/SetCustomQuotaArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/SetCustomQuotaArg$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaResult$Serializer;

    .line 1363
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/CustomQuotaError$Serializer;

    move-object v3, p1

    .line 1358
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    new-instance v1, Lcom/dropbox/core/v2/team/CustomQuotaErrorException;

    const-string/jumbo v2, "2/team/member_space_limits/set_custom_quota"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/CustomQuotaError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/CustomQuotaErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/CustomQuotaError;)V

    throw v1
.end method

.method public memberSpaceLimitsSetCustomQuota(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/UserCustomQuotaArg;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/CustomQuotaResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/CustomQuotaErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1382
    new-instance v0, Lcom/dropbox/core/v2/team/SetCustomQuotaArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/SetCustomQuotaArg;-><init>(Ljava/util/List;)V

    .line 1383
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->memberSpaceLimitsSetCustomQuota(Lcom/dropbox/core/v2/team/SetCustomQuotaArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method membersAdd(Lcom/dropbox/core/v2/team/MembersAddArg;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1406
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddLaunch$Serializer;

    .line 1412
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 1406
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersAddLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1414
    :catch_0
    move-exception v0

    .line 1415
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"members/add\":"

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

.method public membersAdd(Ljava/util/List;)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddArg;",
            ">;)",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1442
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/MembersAddArg;-><init>(Ljava/util/List;)V

    .line 1443
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersAdd(Lcom/dropbox/core/v2/team/MembersAddArg;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object v0

    return-object v0
.end method

.method public membersAdd(Ljava/util/List;Z)Lcom/dropbox/core/v2/team/MembersAddLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddArg;",
            ">;Z)",
            "Lcom/dropbox/core/v2/team/MembersAddLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1467
    new-instance v0, Lcom/dropbox/core/v2/team/MembersAddArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/MembersAddArg;-><init>(Ljava/util/List;Z)V

    .line 1468
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersAdd(Lcom/dropbox/core/v2/team/MembersAddArg;)Lcom/dropbox/core/v2/team/MembersAddLaunch;

    move-result-object v0

    return-object v0
.end method

.method membersAddJobStatusGet(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1485
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/add/job_status/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/team/members/add/job_status/get"

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

.method public membersAddJobStatusGet(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1511
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersAddJobStatusGet(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/team/MembersAddJobStatus;

    move-result-object v0

    return-object v0
.end method

.method membersGetInfo(Lcom/dropbox/core/v2/team/MembersGetInfoArgs;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/MembersGetInfoArgs;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MembersGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersGetInfoErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1528
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/get_info"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersGetInfoArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersGetInfoArgs$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/team/MembersGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersGetInfoItem$Serializer;

    .line 1533
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersGetInfoError$Serializer;

    move-object v3, p1

    .line 1528
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1536
    :catch_0
    move-exception v0

    .line 1537
    new-instance v1, Lcom/dropbox/core/v2/team/MembersGetInfoErrorException;

    const-string/jumbo v2, "2/team/members/get_info"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersGetInfoError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/MembersGetInfoErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersGetInfoError;)V

    throw v1
.end method

.method public membersGetInfo(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/UserSelectorArg;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MembersGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersGetInfoErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1554
    new-instance v0, Lcom/dropbox/core/v2/team/MembersGetInfoArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/MembersGetInfoArgs;-><init>(Ljava/util/List;)V

    .line 1555
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersGetInfo(Lcom/dropbox/core/v2/team/MembersGetInfoArgs;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public membersList()Lcom/dropbox/core/v2/team/MembersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1588
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MembersListArg;-><init>()V

    .line 1589
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersList(Lcom/dropbox/core/v2/team/MembersListArg;)Lcom/dropbox/core/v2/team/MembersListResult;

    move-result-object v0

    return-object v0
.end method

.method membersList(Lcom/dropbox/core/v2/team/MembersListArg;)Lcom/dropbox/core/v2/team/MembersListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1568
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/MembersListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/MembersListError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1576
    :catch_0
    move-exception v0

    .line 1577
    new-instance v1, Lcom/dropbox/core/v2/team/MembersListErrorException;

    const-string/jumbo v2, "2/team/members/list"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersListError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/MembersListErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersListError;)V

    throw v1
.end method

.method public membersListBuilder()Lcom/dropbox/core/v2/team/MembersListBuilder;
    .locals 2

    .prologue
    .line 1599
    invoke-static {}, Lcom/dropbox/core/v2/team/MembersListArg;->newBuilder()Lcom/dropbox/core/v2/team/MembersListArg$Builder;

    move-result-object v0

    .line 1600
    new-instance v1, Lcom/dropbox/core/v2/team/MembersListBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/MembersListBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersListArg$Builder;)V

    return-object v1
.end method

.method membersListContinue(Lcom/dropbox/core/v2/team/MembersListContinueArg;)Lcom/dropbox/core/v2/team/MembersListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1615
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersListContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/MembersListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersListContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    new-instance v1, Lcom/dropbox/core/v2/team/MembersListContinueErrorException;

    const-string/jumbo v2, "2/team/members/list/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersListContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/MembersListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersListContinueError;)V

    throw v1
.end method

.method public membersListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/MembersListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1640
    new-instance v0, Lcom/dropbox/core/v2/team/MembersListContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/MembersListContinueArg;-><init>(Ljava/lang/String;)V

    .line 1641
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersListContinue(Lcom/dropbox/core/v2/team/MembersListContinueArg;)Lcom/dropbox/core/v2/team/MembersListResult;

    move-result-object v0

    return-object v0
.end method

.method membersRecover(Lcom/dropbox/core/v2/team/MembersRecoverArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersRecoverErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1658
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/recover"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersRecoverArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersRecoverArg$Serializer;

    .line 1663
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/MembersRecoverError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersRecoverError$Serializer;

    move-object v3, p1

    .line 1658
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    return-void

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    new-instance v1, Lcom/dropbox/core/v2/team/MembersRecoverErrorException;

    const-string/jumbo v2, "2/team/members/recover"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersRecoverError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/MembersRecoverErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersRecoverError;)V

    throw v1
.end method

.method public membersRecover(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersRecoverErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1682
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRecoverArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/MembersRecoverArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 1683
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersRecover(Lcom/dropbox/core/v2/team/MembersRecoverArg;)V

    .line 1684
    return-void
.end method

.method membersRemove(Lcom/dropbox/core/v2/team/MembersRemoveArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1713
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersRemoveArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/LaunchEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersRemoveError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1721
    :catch_0
    move-exception v0

    .line 1722
    new-instance v1, Lcom/dropbox/core/v2/team/MembersRemoveErrorException;

    const-string/jumbo v2, "2/team/members/remove"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersRemoveError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/MembersRemoveErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersRemoveError;)V

    throw v1
.end method

.method public membersRemove(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersRemoveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1756
    new-instance v0, Lcom/dropbox/core/v2/team/MembersRemoveArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 1757
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersRemove(Lcom/dropbox/core/v2/team/MembersRemoveArg;)Lcom/dropbox/core/v2/async/LaunchEmptyResult;

    move-result-object v0

    return-object v0
.end method

.method public membersRemoveBuilder(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveBuilder;
    .locals 2

    .prologue
    .line 1786
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersRemoveArg;->newBuilder(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;

    move-result-object v0

    .line 1787
    new-instance v1, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/MembersRemoveBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersRemoveArg$Builder;)V

    return-object v1
.end method

.method membersRemoveJobStatusGet(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/async/PollEmptyResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1809
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/remove/job_status/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/async/PollEmptyResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollEmptyResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/async/PollEmptyResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1817
    :catch_0
    move-exception v0

    .line 1818
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/team/members/remove/job_status/get"

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

.method public membersRemoveJobStatusGet(Ljava/lang/String;)Lcom/dropbox/core/v2/async/PollEmptyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1840
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersRemoveJobStatusGet(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/async/PollEmptyResult;

    move-result-object v0

    return-object v0
.end method

.method public membersSendWelcomeEmail(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSendWelcomeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1859
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/send_welcome_email"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UserSelectorArg$Serializer;

    .line 1864
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSendWelcomeError$Serializer;

    move-object v3, p1

    .line 1859
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1870
    return-void

    .line 1867
    :catch_0
    move-exception v0

    .line 1868
    new-instance v1, Lcom/dropbox/core/v2/team/MembersSendWelcomeErrorException;

    const-string/jumbo v2, "2/team/members/send_welcome_email"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersSendWelcomeError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/MembersSendWelcomeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersSendWelcomeError;)V

    throw v1
.end method

.method membersSetAdminPermissions(Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;)Lcom/dropbox/core/v2/team/MembersSetPermissionsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSetPermissionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1884
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/set_admin_permissions"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetPermissionsArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/MembersSetPermissionsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetPermissionsResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetPermissionsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersSetPermissionsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1892
    :catch_0
    move-exception v0

    .line 1893
    new-instance v1, Lcom/dropbox/core/v2/team/MembersSetPermissionsErrorException;

    const-string/jumbo v2, "2/team/members/set_admin_permissions"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersSetPermissionsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/MembersSetPermissionsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersSetPermissionsError;)V

    throw v1
.end method

.method public membersSetAdminPermissions(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/AdminTier;)Lcom/dropbox/core/v2/team/MembersSetPermissionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSetPermissionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1908
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Lcom/dropbox/core/v2/team/AdminTier;)V

    .line 1909
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersSetAdminPermissions(Lcom/dropbox/core/v2/team/MembersSetPermissionsArg;)Lcom/dropbox/core/v2/team/MembersSetPermissionsResult;

    move-result-object v0

    return-object v0
.end method

.method membersSetProfile(Lcom/dropbox/core/v2/team/MembersSetProfileArg;)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSetProfileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1927
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/set_profile"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberInfo$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSetProfileError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamMemberInfo;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1935
    :catch_0
    move-exception v0

    .line 1936
    new-instance v1, Lcom/dropbox/core/v2/team/MembersSetProfileErrorException;

    const-string/jumbo v2, "2/team/members/set_profile"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersSetProfileError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/MembersSetProfileErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersSetProfileError;)V

    throw v1
.end method

.method public membersSetProfile(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/TeamMemberInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSetProfileErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1952
    new-instance v0, Lcom/dropbox/core/v2/team/MembersSetProfileArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 1953
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersSetProfile(Lcom/dropbox/core/v2/team/MembersSetProfileArg;)Lcom/dropbox/core/v2/team/TeamMemberInfo;

    move-result-object v0

    return-object v0
.end method

.method public membersSetProfileBuilder(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;
    .locals 2

    .prologue
    .line 1969
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MembersSetProfileArg;->newBuilder(Lcom/dropbox/core/v2/team/UserSelectorArg;)Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;

    move-result-object v0

    .line 1970
    new-instance v1, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/MembersSetProfileBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/MembersSetProfileArg$Builder;)V

    return-object v1
.end method

.method membersSuspend(Lcom/dropbox/core/v2/team/MembersDeactivateArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSuspendErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1987
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/suspend"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersDeactivateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersDeactivateArg$Serializer;

    .line 1992
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersSuspendError$Serializer;

    move-object v3, p1

    .line 1987
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    return-void

    .line 1995
    :catch_0
    move-exception v0

    .line 1996
    new-instance v1, Lcom/dropbox/core/v2/team/MembersSuspendErrorException;

    const-string/jumbo v2, "2/team/members/suspend"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersSuspendError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/MembersSuspendErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersSuspendError;)V

    throw v1
.end method

.method public membersSuspend(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSuspendErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2015
    new-instance v0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/MembersDeactivateArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 2016
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersSuspend(Lcom/dropbox/core/v2/team/MembersDeactivateArg;)V

    .line 2017
    return-void
.end method

.method public membersSuspend(Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersSuspendErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2033
    new-instance v0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/MembersDeactivateArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V

    .line 2034
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersSuspend(Lcom/dropbox/core/v2/team/MembersDeactivateArg;)V

    .line 2035
    return-void
.end method

.method membersUnsuspend(Lcom/dropbox/core/v2/team/MembersUnsuspendArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersUnsuspendErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2051
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/members/unsuspend"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/MembersUnsuspendArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersUnsuspendArg$Serializer;

    .line 2056
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersUnsuspendError$Serializer;

    move-object v3, p1

    .line 2051
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2062
    return-void

    .line 2059
    :catch_0
    move-exception v0

    .line 2060
    new-instance v1, Lcom/dropbox/core/v2/team/MembersUnsuspendErrorException;

    const-string/jumbo v2, "2/team/members/unsuspend"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MembersUnsuspendError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/MembersUnsuspendErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/MembersUnsuspendError;)V

    throw v1
.end method

.method public membersUnsuspend(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/MembersUnsuspendErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2075
    new-instance v0, Lcom/dropbox/core/v2/team/MembersUnsuspendArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/MembersUnsuspendArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V

    .line 2076
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->membersUnsuspend(Lcom/dropbox/core/v2/team/MembersUnsuspendArg;)V

    .line 2077
    return-void
.end method

.method public namespacesList()Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2123
    new-instance v0, Lcom/dropbox/core/v2/team/TeamNamespacesListArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamNamespacesListArg;-><init>()V

    .line 2124
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->namespacesList(Lcom/dropbox/core/v2/team/TeamNamespacesListArg;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;

    move-result-object v0

    return-object v0
.end method

.method public namespacesList(J)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2144
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2147
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 2148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2150
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/TeamNamespacesListArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamNamespacesListArg;-><init>(J)V

    .line 2151
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->namespacesList(Lcom/dropbox/core/v2/team/TeamNamespacesListArg;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;

    move-result-object v0

    return-object v0
.end method

.method namespacesList(Lcom/dropbox/core/v2/team/TeamNamespacesListArg;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2096
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/namespaces/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamNamespacesListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamNamespacesListArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamNamespacesListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamNamespacesListResult$Serializer;

    .line 2102
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 2096
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2104
    :catch_0
    move-exception v0

    .line 2105
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"namespaces/list\":"

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

.method namespacesListContinue(Lcom/dropbox/core/v2/team/TeamNamespacesListContinueArg;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamNamespacesListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2168
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/namespaces/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamNamespacesListContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamNamespacesListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamNamespacesListResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2176
    :catch_0
    move-exception v0

    .line 2177
    new-instance v1, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueErrorException;

    const-string/jumbo v2, "2/team/namespaces/list/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamNamespacesListContinueError;)V

    throw v1
.end method

.method public namespacesListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamNamespacesListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2195
    new-instance v0, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/TeamNamespacesListContinueArg;-><init>(Ljava/lang/String;)V

    .line 2196
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->namespacesListContinue(Lcom/dropbox/core/v2/team/TeamNamespacesListContinueArg;)Lcom/dropbox/core/v2/team/TeamNamespacesListResult;

    move-result-object v0

    return-object v0
.end method

.method propertiesTemplateAdd(Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2208
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/properties/template/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/AddTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2216
    :catch_0
    move-exception v0

    .line 2217
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;

    const-string/jumbo v2, "2/team/properties/template/add"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;)V

    throw v1
.end method

.method public propertiesTemplateAdd(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyFieldTemplate;",
            ">;)",
            "Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2238
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 2239
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->propertiesTemplateAdd(Lcom/dropbox/core/v2/fileproperties/AddTemplateArg;)Lcom/dropbox/core/v2/fileproperties/AddTemplateResult;

    move-result-object v0

    return-object v0
.end method

.method propertiesTemplateGet(Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2251
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/properties/template/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/GetTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/GetTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/GetTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    const-string/jumbo v2, "2/team/properties/template/get"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw v1
.end method

.method public propertiesTemplateGet(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2280
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;-><init>(Ljava/lang/String;)V

    .line 2281
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->propertiesTemplateGet(Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;

    move-result-object v0

    return-object v0
.end method

.method public propertiesTemplateList()Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2295
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/properties/template/list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2299
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    .line 2295
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2303
    :catch_0
    move-exception v0

    .line 2304
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    const-string/jumbo v2, "2/team/properties/template/list"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/TemplateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/TemplateError;)V

    throw v1
.end method

.method propertiesTemplateUpdate(Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2317
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/properties/template/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2325
    :catch_0
    move-exception v0

    .line 2326
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;

    const-string/jumbo v2, "2/team/properties/template/update"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/ModifyTemplateError;)V

    throw v1
.end method

.method public propertiesTemplateUpdate(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/ModifyTemplateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2346
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;-><init>(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->propertiesTemplateUpdate(Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateResult;

    move-result-object v0

    return-object v0
.end method

.method public propertiesTemplateUpdateBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2369
    invoke-static {p1}, Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;

    move-result-object v0

    .line 2370
    new-instance v1, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/PropertiesTemplateUpdateBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/fileproperties/UpdateTemplateArg$Builder;)V

    return-object v1
.end method

.method public reportsGetActivity()Lcom/dropbox/core/v2/team/GetActivityReport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2409
    new-instance v0, Lcom/dropbox/core/v2/team/DateRange;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>()V

    .line 2410
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->reportsGetActivity(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetActivityReport;

    move-result-object v0

    return-object v0
.end method

.method reportsGetActivity(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetActivityReport;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2388
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/reports/get_activity"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/DateRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRange$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetActivityReport$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/DateRangeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRangeError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GetActivityReport;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2396
    :catch_0
    move-exception v0

    .line 2397
    new-instance v1, Lcom/dropbox/core/v2/team/DateRangeErrorException;

    const-string/jumbo v2, "2/team/reports/get_activity"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/DateRangeError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/DateRangeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/DateRangeError;)V

    throw v1
.end method

.method public reportsGetActivityBuilder()Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;
    .locals 2

    .prologue
    .line 2420
    invoke-static {}, Lcom/dropbox/core/v2/team/DateRange;->newBuilder()Lcom/dropbox/core/v2/team/DateRange$Builder;

    move-result-object v0

    .line 2421
    new-instance v1, Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/ReportsGetActivityBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/DateRange$Builder;)V

    return-object v1
.end method

.method public reportsGetDevices()Lcom/dropbox/core/v2/team/GetDevicesReport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2462
    new-instance v0, Lcom/dropbox/core/v2/team/DateRange;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>()V

    .line 2463
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->reportsGetDevices(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetDevicesReport;

    move-result-object v0

    return-object v0
.end method

.method reportsGetDevices(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetDevicesReport;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2440
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/reports/get_devices"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/DateRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRange$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetDevicesReport$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/DateRangeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRangeError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GetDevicesReport;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2448
    :catch_0
    move-exception v0

    .line 2449
    new-instance v1, Lcom/dropbox/core/v2/team/DateRangeErrorException;

    const-string/jumbo v2, "2/team/reports/get_devices"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/DateRangeError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/DateRangeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/DateRangeError;)V

    throw v1
.end method

.method public reportsGetDevicesBuilder()Lcom/dropbox/core/v2/team/ReportsGetDevicesBuilder;
    .locals 2

    .prologue
    .line 2473
    invoke-static {}, Lcom/dropbox/core/v2/team/DateRange;->newBuilder()Lcom/dropbox/core/v2/team/DateRange$Builder;

    move-result-object v0

    .line 2474
    new-instance v1, Lcom/dropbox/core/v2/team/ReportsGetDevicesBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/ReportsGetDevicesBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/DateRange$Builder;)V

    return-object v1
.end method

.method public reportsGetMembership()Lcom/dropbox/core/v2/team/GetMembershipReport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2513
    new-instance v0, Lcom/dropbox/core/v2/team/DateRange;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>()V

    .line 2514
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->reportsGetMembership(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetMembershipReport;

    move-result-object v0

    return-object v0
.end method

.method reportsGetMembership(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetMembershipReport;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2492
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/reports/get_membership"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/DateRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRange$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetMembershipReport$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/DateRangeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRangeError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GetMembershipReport;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2500
    :catch_0
    move-exception v0

    .line 2501
    new-instance v1, Lcom/dropbox/core/v2/team/DateRangeErrorException;

    const-string/jumbo v2, "2/team/reports/get_membership"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/DateRangeError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/DateRangeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/DateRangeError;)V

    throw v1
.end method

.method public reportsGetMembershipBuilder()Lcom/dropbox/core/v2/team/ReportsGetMembershipBuilder;
    .locals 2

    .prologue
    .line 2524
    invoke-static {}, Lcom/dropbox/core/v2/team/DateRange;->newBuilder()Lcom/dropbox/core/v2/team/DateRange$Builder;

    move-result-object v0

    .line 2525
    new-instance v1, Lcom/dropbox/core/v2/team/ReportsGetMembershipBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/ReportsGetMembershipBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/DateRange$Builder;)V

    return-object v1
.end method

.method public reportsGetStorage()Lcom/dropbox/core/v2/team/GetStorageReport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2564
    new-instance v0, Lcom/dropbox/core/v2/team/DateRange;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DateRange;-><init>()V

    .line 2565
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->reportsGetStorage(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetStorageReport;

    move-result-object v0

    return-object v0
.end method

.method reportsGetStorage(Lcom/dropbox/core/v2/team/DateRange;)Lcom/dropbox/core/v2/team/GetStorageReport;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/DateRangeErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2543
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/reports/get_storage"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/DateRange$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRange$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GetStorageReport$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/DateRangeError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DateRangeError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/GetStorageReport;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2551
    :catch_0
    move-exception v0

    .line 2552
    new-instance v1, Lcom/dropbox/core/v2/team/DateRangeErrorException;

    const-string/jumbo v2, "2/team/reports/get_storage"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/DateRangeError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/DateRangeErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/DateRangeError;)V

    throw v1
.end method

.method public reportsGetStorageBuilder()Lcom/dropbox/core/v2/team/ReportsGetStorageBuilder;
    .locals 2

    .prologue
    .line 2575
    invoke-static {}, Lcom/dropbox/core/v2/team/DateRange;->newBuilder()Lcom/dropbox/core/v2/team/DateRange$Builder;

    move-result-object v0

    .line 2576
    new-instance v1, Lcom/dropbox/core/v2/team/ReportsGetStorageBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/team/ReportsGetStorageBuilder;-><init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/DateRange$Builder;)V

    return-object v1
.end method

.method teamFolderActivate(Lcom/dropbox/core/v2/team/TeamFolderIdArg;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderActivateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2592
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/team_folder/activate"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamFolderIdArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderIdArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderActivateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2600
    :catch_0
    move-exception v0

    .line 2601
    new-instance v1, Lcom/dropbox/core/v2/team/TeamFolderActivateErrorException;

    const-string/jumbo v2, "2/team/team_folder/activate"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderActivateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/TeamFolderActivateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderActivateError;)V

    throw v1
.end method

.method public teamFolderActivate(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderActivateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2618
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderIdArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderIdArg;-><init>(Ljava/lang/String;)V

    .line 2619
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderActivate(Lcom/dropbox/core/v2/team/TeamFolderIdArg;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method teamFolderArchive(Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderArchiveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2633
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/team_folder/archive"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2641
    :catch_0
    move-exception v0

    .line 2642
    new-instance v1, Lcom/dropbox/core/v2/team/TeamFolderArchiveErrorException;

    const-string/jumbo v2, "2/team/team_folder/archive"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/TeamFolderArchiveErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderArchiveError;)V

    throw v1
.end method

.method public teamFolderArchive(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderArchiveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2660
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;-><init>(Ljava/lang/String;)V

    .line 2661
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderArchive(Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;

    move-result-object v0

    return-object v0
.end method

.method public teamFolderArchive(Ljava/lang/String;Z)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderArchiveErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2677
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;-><init>(Ljava/lang/String;Z)V

    .line 2678
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderArchive(Lcom/dropbox/core/v2/team/TeamFolderArchiveArg;)Lcom/dropbox/core/v2/team/TeamFolderArchiveLaunch;

    move-result-object v0

    return-object v0
.end method

.method teamFolderArchiveCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2694
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/team_folder/archive/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2702
    :catch_0
    move-exception v0

    .line 2703
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/team/team_folder/archive/check"

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

.method public teamFolderArchiveCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2719
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 2720
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderArchiveCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/team/TeamFolderArchiveJobStatus;

    move-result-object v0

    return-object v0
.end method

.method teamFolderCreate(Lcom/dropbox/core/v2/team/TeamFolderCreateArg;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2736
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/team_folder/create"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamFolderCreateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderCreateArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderCreateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderCreateError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2744
    :catch_0
    move-exception v0

    .line 2745
    new-instance v1, Lcom/dropbox/core/v2/team/TeamFolderCreateErrorException;

    const-string/jumbo v2, "2/team/team_folder/create"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderCreateError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/TeamFolderCreateErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderCreateError;)V

    throw v1
.end method

.method public teamFolderCreate(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderCreateErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2761
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderCreateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderCreateArg;-><init>(Ljava/lang/String;)V

    .line 2762
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderCreate(Lcom/dropbox/core/v2/team/TeamFolderCreateArg;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method teamFolderGetInfo(Lcom/dropbox/core/v2/team/TeamFolderIdListArg;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/team/TeamFolderIdListArg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2776
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/team_folder/get_info"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamFolderIdListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderIdListArg$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem$Serializer;

    .line 2781
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    .line 2782
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 2776
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2784
    :catch_0
    move-exception v0

    .line 2785
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"team_folder/get_info\":"

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

.method public teamFolderGetInfo(Ljava/util/List;)Ljava/util/List;
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
            "Lcom/dropbox/core/v2/team/TeamFolderGetInfoItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2800
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderIdListArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderIdListArg;-><init>(Ljava/util/List;)V

    .line 2801
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderGetInfo(Lcom/dropbox/core/v2/team/TeamFolderIdListArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public teamFolderList()Lcom/dropbox/core/v2/team/TeamFolderListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2840
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderListArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamFolderListArg;-><init>()V

    .line 2841
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderList(Lcom/dropbox/core/v2/team/TeamFolderListArg;)Lcom/dropbox/core/v2/team/TeamFolderListResult;

    move-result-object v0

    return-object v0
.end method

.method public teamFolderList(J)Lcom/dropbox/core/v2/team/TeamFolderListResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2857
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2860
    :cond_0
    const-wide/16 v0, 0x3e8

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 2861
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2863
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderListArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderListArg;-><init>(J)V

    .line 2864
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderList(Lcom/dropbox/core/v2/team/TeamFolderListArg;)Lcom/dropbox/core/v2/team/TeamFolderListResult;

    move-result-object v0

    return-object v0
.end method

.method teamFolderList(Lcom/dropbox/core/v2/team/TeamFolderListArg;)Lcom/dropbox/core/v2/team/TeamFolderListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderListErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2817
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/team_folder/list"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamFolderListArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderListArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderListResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderListError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderListError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2825
    :catch_0
    move-exception v0

    .line 2826
    new-instance v1, Lcom/dropbox/core/v2/team/TeamFolderListErrorException;

    const-string/jumbo v2, "2/team/team_folder/list"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderListError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/TeamFolderListErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderListError;)V

    throw v1
.end method

.method teamFolderListContinue(Lcom/dropbox/core/v2/team/TeamFolderListContinueArg;)Lcom/dropbox/core/v2/team/TeamFolderListResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2882
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/team_folder/list/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamFolderListContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderListContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderListResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderListResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderListContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderListContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderListResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2890
    :catch_0
    move-exception v0

    .line 2891
    new-instance v1, Lcom/dropbox/core/v2/team/TeamFolderListContinueErrorException;

    const-string/jumbo v2, "2/team/team_folder/list/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderListContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/TeamFolderListContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderListContinueError;)V

    throw v1
.end method

.method public teamFolderListContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderListResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderListContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2910
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderListContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderListContinueArg;-><init>(Ljava/lang/String;)V

    .line 2911
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderListContinue(Lcom/dropbox/core/v2/team/TeamFolderListContinueArg;)Lcom/dropbox/core/v2/team/TeamFolderListResult;

    move-result-object v0

    return-object v0
.end method

.method teamFolderPermanentlyDelete(Lcom/dropbox/core/v2/team/TeamFolderIdArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2925
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/team_folder/permanently_delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamFolderIdArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderIdArg$Serializer;

    .line 2930
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError$Serializer;

    move-object v3, p1

    .line 2925
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2936
    return-void

    .line 2933
    :catch_0
    move-exception v0

    .line 2934
    new-instance v1, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteErrorException;

    const-string/jumbo v2, "2/team/team_folder/permanently_delete"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteError;)V

    throw v1
.end method

.method public teamFolderPermanentlyDelete(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderPermanentlyDeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2949
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderIdArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/team/TeamFolderIdArg;-><init>(Ljava/lang/String;)V

    .line 2950
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderPermanentlyDelete(Lcom/dropbox/core/v2/team/TeamFolderIdArg;)V

    .line 2951
    return-void
.end method

.method teamFolderRename(Lcom/dropbox/core/v2/team/TeamFolderRenameArg;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderRenameErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2966
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/team_folder/rename"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/team/TeamFolderRenameArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamFolderRenameError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2974
    :catch_0
    move-exception v0

    .line 2975
    new-instance v1, Lcom/dropbox/core/v2/team/TeamFolderRenameErrorException;

    const-string/jumbo v2, "2/team/team_folder/rename"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TeamFolderRenameError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/TeamFolderRenameErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TeamFolderRenameError;)V

    throw v1
.end method

.method public teamFolderRename(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TeamFolderRenameErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2993
    new-instance v0, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/team/TeamFolderRenameArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->teamFolderRename(Lcom/dropbox/core/v2/team/TeamFolderRenameArg;)Lcom/dropbox/core/v2/team/TeamFolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public tokenGetAuthenticatedAdmin()Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 3010
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team/token/get_authenticated_admin"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3014
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError$Serializer;

    .line 3010
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3018
    :catch_0
    move-exception v0

    .line 3019
    new-instance v1, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminErrorException;

    const-string/jumbo v2, "2/team/token/get_authenticated_admin"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/team/TokenGetAuthenticatedAdminError;)V

    throw v1
.end method
