.class public Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;
.super Ljava/lang/Object;
.source "DbxUserFileRequestsRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 24
    return-void
.end method


# virtual methods
.method create(Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/file_requests/create"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/CreateFileRequestError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/FileRequest;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;

    const-string/jumbo v2, "2/file_requests/create"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/CreateFileRequestError;)V

    throw v1
.end method

.method public create(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/CreateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->create(Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public createBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/CreateBuilder;
    .locals 2

    .prologue
    .line 95
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/dropbox/core/v2/filerequests/CreateBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/filerequests/CreateBuilder;-><init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/CreateFileRequestArgs$Builder;)V

    return-object v1
.end method

.method get(Lcom/dropbox/core/v2/filerequests/GetFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/file_requests/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/GetFileRequestArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/GetFileRequestArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/GetFileRequestError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/GetFileRequestError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/FileRequest;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;

    const-string/jumbo v2, "2/file_requests/get"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/GetFileRequestError;)V

    throw v1
.end method

.method public get(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/GetFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GetFileRequestArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/GetFileRequestArgs;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->get(Lcom/dropbox/core/v2/filerequests/GetFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public list()Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/file_requests/list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 162
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/ListFileRequestsError$Serializer;

    .line 158
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    new-instance v1, Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;

    const-string/jumbo v2, "2/file_requests/list"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/ListFileRequestsError;)V

    throw v1
.end method

.method update(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/file_requests/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/FileRequest$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/FileRequest;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;

    const-string/jumbo v2, "2/file_requests/update"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestError;)V

    throw v1
.end method

.method public update(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/FileRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/filerequests/UpdateFileRequestErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;->update(Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;)Lcom/dropbox/core/v2/filerequests/FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public updateBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateBuilder;
    .locals 2

    .prologue
    .line 234
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;

    move-result-object v0

    .line 235
    new-instance v1, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/filerequests/UpdateBuilder;-><init>(Lcom/dropbox/core/v2/filerequests/DbxUserFileRequestsRequests;Lcom/dropbox/core/v2/filerequests/UpdateFileRequestArgs$Builder;)V

    return-object v1
.end method
