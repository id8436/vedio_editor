.class public Lcom/dropbox/core/v2/files/DbxUserFilesRequests;
.super Ljava/lang/Object;
.source "DbxUserFilesRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 53
    return-void
.end method


# virtual methods
.method alphaGetMetadata(Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/alpha/get_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/AlphaGetMetadataError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    new-instance v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;

    const-string/jumbo v2, "2/files/alpha/get_metadata"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/AlphaGetMetadataError;)V

    throw v1
.end method

.method public alphaGetMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/AlphaGetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->alphaGetMetadata(Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public alphaGetMetadataBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;
    .locals 2

    .prologue
    .line 120
    invoke-static {p1}, Lcom/dropbox/core/v2/files/AlphaGetMetadataArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/AlphaGetMetadataBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/AlphaGetMetadataArg$Builder;)V

    return-object v1
.end method

.method alphaUpload(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/alpha/upload"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v0

    .line 144
    new-instance v1, Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/v2/files/AlphaUploadUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v1
.end method

.method public alphaUpload(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->alphaUpload(Lcom/dropbox/core/v2/files/CommitInfoWithProperties;)Lcom/dropbox/core/v2/files/AlphaUploadUploader;

    move-result-object v0

    return-object v0
.end method

.method public alphaUploadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/AlphaUploadBuilder;
    .locals 2

    .prologue
    .line 189
    invoke-static {p1}, Lcom/dropbox/core/v2/files/CommitInfoWithProperties;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;

    move-result-object v0

    .line 190
    new-instance v1, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/AlphaUploadBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfoWithProperties$Builder;)V

    return-object v1
.end method

.method copy(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/copy"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Lcom/dropbox/core/v2/files/RelocationErrorException;

    const-string/jumbo v2, "2/files/copy"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/RelocationErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RelocationError;)V

    throw v1
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copy(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v0

    return-object v0
.end method

.method copyBatch(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/copy_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;

    .line 300
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 294
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"copy_batch\":"

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

.method public copyBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/RelocationBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;)V

    .line 333
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copyBatch(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method public copyBatchBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/CopyBatchBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/CopyBatchBuilder;"
        }
    .end annotation

    .prologue
    .line 357
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;->newBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    move-result-object v0

    .line 358
    new-instance v1, Lcom/dropbox/core/v2/files/CopyBatchBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/CopyBatchBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;)V

    return-object v1
.end method

.method copyBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/copy_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/files/copy_batch/check"

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

.method public copyBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copyBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public copyBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/CopyBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    move-result-object v0

    .line 270
    new-instance v1, Lcom/dropbox/core/v2/files/CopyBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/CopyBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V

    return-object v1
.end method

.method copyReferenceGet(Lcom/dropbox/core/v2/files/GetCopyReferenceArg;)Lcom/dropbox/core/v2/files/GetCopyReferenceResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/copy_reference/get"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/GetCopyReferenceArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetCopyReferenceArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/GetCopyReferenceResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetCopyReferenceResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetCopyReferenceError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetCopyReferenceResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    new-instance v1, Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;

    const-string/jumbo v2, "2/files/copy_reference/get"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetCopyReferenceError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetCopyReferenceError;)V

    throw v1
.end method

.method public copyReferenceGet(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetCopyReferenceResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Lcom/dropbox/core/v2/files/GetCopyReferenceArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/GetCopyReferenceArg;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copyReferenceGet(Lcom/dropbox/core/v2/files/GetCopyReferenceArg;)Lcom/dropbox/core/v2/files/GetCopyReferenceResult;

    move-result-object v0

    return-object v0
.end method

.method copyReferenceSave(Lcom/dropbox/core/v2/files/SaveCopyReferenceArg;)Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/copy_reference/save"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/SaveCopyReferenceArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/SaveCopyReferenceResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveCopyReferenceError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    new-instance v1, Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;

    const-string/jumbo v2, "2/files/copy_reference/save"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SaveCopyReferenceError;)V

    throw v1
.end method

.method public copyReferenceSave(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveCopyReferenceErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v0, Lcom/dropbox/core/v2/files/SaveCopyReferenceArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/SaveCopyReferenceArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copyReferenceSave(Lcom/dropbox/core/v2/files/SaveCopyReferenceArg;)Lcom/dropbox/core/v2/files/SaveCopyReferenceResult;

    move-result-object v0

    return-object v0
.end method

.method copyV2(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/RelocationResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/copy_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    new-instance v1, Lcom/dropbox/core/v2/files/RelocationErrorException;

    const-string/jumbo v2, "2/files/copy_v2"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/RelocationErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RelocationError;)V

    throw v1
.end method

.method public copyV2(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->copyV2(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/RelocationResult;

    move-result-object v0

    return-object v0
.end method

.method public copyV2Builder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/CopyV2Builder;
    .locals 2

    .prologue
    .line 554
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    move-result-object v0

    .line 555
    new-instance v1, Lcom/dropbox/core/v2/files/CopyV2Builder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/CopyV2Builder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V

    return-object v1
.end method

.method createFolder(Lcom/dropbox/core/v2/files/CreateFolderArg;)Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/create_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/CreateFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CreateFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FolderMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/CreateFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CreateFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/FolderMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 576
    :catch_0
    move-exception v0

    .line 577
    new-instance v1, Lcom/dropbox/core/v2/files/CreateFolderErrorException;

    const-string/jumbo v2, "2/files/create_folder"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/CreateFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/CreateFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/CreateFolderError;)V

    throw v1
.end method

.method public createFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 598
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/CreateFolderArg;-><init>(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->createFolder(Lcom/dropbox/core/v2/files/CreateFolderArg;)Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method public createFolder(Ljava/lang/String;Z)Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 618
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/CreateFolderArg;-><init>(Ljava/lang/String;Z)V

    .line 619
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->createFolder(Lcom/dropbox/core/v2/files/CreateFolderArg;)Lcom/dropbox/core/v2/files/FolderMetadata;

    move-result-object v0

    return-object v0
.end method

.method createFolderV2(Lcom/dropbox/core/v2/files/CreateFolderArg;)Lcom/dropbox/core/v2/files/CreateFolderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/create_folder_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/CreateFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CreateFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/CreateFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CreateFolderResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/CreateFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CreateFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/CreateFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    new-instance v1, Lcom/dropbox/core/v2/files/CreateFolderErrorException;

    const-string/jumbo v2, "2/files/create_folder_v2"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/CreateFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/CreateFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/CreateFolderError;)V

    throw v1
.end method

.method public createFolderV2(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CreateFolderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 658
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/CreateFolderArg;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->createFolderV2(Lcom/dropbox/core/v2/files/CreateFolderArg;)Lcom/dropbox/core/v2/files/CreateFolderResult;

    move-result-object v0

    return-object v0
.end method

.method public createFolderV2(Ljava/lang/String;Z)Lcom/dropbox/core/v2/files/CreateFolderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/CreateFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 674
    new-instance v0, Lcom/dropbox/core/v2/files/CreateFolderArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/CreateFolderArg;-><init>(Ljava/lang/String;Z)V

    .line 675
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->createFolderV2(Lcom/dropbox/core/v2/files/CreateFolderArg;)Lcom/dropbox/core/v2/files/CreateFolderResult;

    move-result-object v0

    return-object v0
.end method

.method delete(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 694
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/DeleteArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    new-instance v1, Lcom/dropbox/core/v2/files/DeleteErrorException;

    const-string/jumbo v2, "2/files/delete"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/DeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DeleteError;)V

    throw v1
.end method

.method public delete(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->delete(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v0

    return-object v0
.end method

.method deleteBatch(Lcom/dropbox/core/v2/files/DeleteBatchArg;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/delete_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/DeleteBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;

    .line 753
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 747
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"delete_batch\":"

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

.method public deleteBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/DeleteArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/DeleteBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 776
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DeleteBatchArg;-><init>(Ljava/util/List;)V

    .line 777
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->deleteBatch(Lcom/dropbox/core/v2/files/DeleteBatchArg;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method deleteBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/delete_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 802
    :catch_0
    move-exception v0

    .line 803
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/files/delete_batch/check"

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

.method public deleteBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 820
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->deleteBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/DeleteBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method deleteV2(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/DeleteResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/delete_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/DeleteArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/DeleteResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 846
    :catch_0
    move-exception v0

    .line 847
    new-instance v1, Lcom/dropbox/core/v2/files/DeleteErrorException;

    const-string/jumbo v2, "2/files/delete_v2"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/DeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DeleteError;)V

    throw v1
.end method

.method public deleteV2(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 866
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->deleteV2(Lcom/dropbox/core/v2/files/DeleteArg;)Lcom/dropbox/core/v2/files/DeleteResult;

    move-result-object v0

    return-object v0
.end method

.method download(Lcom/dropbox/core/v2/files/DownloadArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/DownloadArg;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/download"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/DownloadArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DownloadArg$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/files/DownloadError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DownloadError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 893
    :catch_0
    move-exception v0

    .line 894
    new-instance v1, Lcom/dropbox/core/v2/files/DownloadErrorException;

    const-string/jumbo v2, "2/files/download"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DownloadError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/DownloadErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DownloadError;)V

    throw v1
.end method

.method public download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 912
    new-instance v0, Lcom/dropbox/core/v2/files/DownloadArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DownloadArg;-><init>(Ljava/lang/String;)V

    .line 913
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Lcom/dropbox/core/v2/files/DownloadArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public download(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DownloadErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 933
    if-eqz p2, :cond_1

    .line 934
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 935
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' is shorter than 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_0
    const-string/jumbo v0, "[0-9a-f]+"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 938
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 941
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/DownloadArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/DownloadArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Lcom/dropbox/core/v2/files/DownloadArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public downloadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DownloadBuilder;
    .locals 1

    .prologue
    .line 959
    new-instance v0, Lcom/dropbox/core/v2/files/DownloadBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/DownloadBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V

    return-object v0
.end method

.method getMetadata(Lcom/dropbox/core/v2/files/GetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 975
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/get_metadata"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetMetadataArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetMetadataError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 983
    :catch_0
    move-exception v0

    .line 984
    new-instance v1, Lcom/dropbox/core/v2/files/GetMetadataErrorException;

    const-string/jumbo v2, "2/files/get_metadata"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetMetadataError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/GetMetadataErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetMetadataError;)V

    throw v1
.end method

.method public getMetadata(Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetMetadataErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1005
    new-instance v0, Lcom/dropbox/core/v2/files/GetMetadataArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/GetMetadataArg;-><init>(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getMetadata(Lcom/dropbox/core/v2/files/GetMetadataArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public getMetadataBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetMetadataBuilder;
    .locals 2

    .prologue
    .line 1024
    invoke-static {p1}, Lcom/dropbox/core/v2/files/GetMetadataArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;

    move-result-object v0

    .line 1025
    new-instance v1, Lcom/dropbox/core/v2/files/GetMetadataBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/GetMetadataBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/GetMetadataArg$Builder;)V

    return-object v1
.end method

.method getPreview(Lcom/dropbox/core/v2/files/PreviewArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/PreviewArg;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1046
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/get_preview"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/PreviewArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PreviewArg$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/files/PreviewError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PreviewError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1055
    :catch_0
    move-exception v0

    .line 1056
    new-instance v1, Lcom/dropbox/core/v2/files/PreviewErrorException;

    const-string/jumbo v2, "2/files/get_preview"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/PreviewError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/PreviewErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/PreviewError;)V

    throw v1
.end method

.method public getPreview(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1078
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/PreviewArg;-><init>(Ljava/lang/String;)V

    .line 1079
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getPreview(Lcom/dropbox/core/v2/files/PreviewArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public getPreview(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/PreviewErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1103
    if-eqz p2, :cond_1

    .line 1104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' is shorter than 9"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1107
    :cond_0
    const-string/jumbo v0, "[0-9a-f]+"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'rev\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/PreviewArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/PreviewArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getPreview(Lcom/dropbox/core/v2/files/PreviewArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetPreviewBuilder;
    .locals 1

    .prologue
    .line 1133
    new-instance v0, Lcom/dropbox/core/v2/files/GetPreviewBuilder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/files/GetPreviewBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Ljava/lang/String;)V

    return-object v0
.end method

.method getTemporaryLink(Lcom/dropbox/core/v2/files/GetTemporaryLinkArg;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1148
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/get_temporary_link"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/GetTemporaryLinkArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetTemporaryLinkArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/GetTemporaryLinkResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetTemporaryLinkResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetTemporaryLinkError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    new-instance v1, Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;

    const-string/jumbo v2, "2/files/get_temporary_link"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetTemporaryLinkError;)V

    throw v1
.end method

.method public getTemporaryLink(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetTemporaryLinkErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1175
    new-instance v0, Lcom/dropbox/core/v2/files/GetTemporaryLinkArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/GetTemporaryLinkArg;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getTemporaryLink(Lcom/dropbox/core/v2/files/GetTemporaryLinkArg;)Lcom/dropbox/core/v2/files/GetTemporaryLinkResult;

    move-result-object v0

    return-object v0
.end method

.method getThumbnail(Lcom/dropbox/core/v2/files/ThumbnailArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/files/ThumbnailArg;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/http/HttpRequestor$Header;",
            ">;)",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ThumbnailErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1196
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/get_thumbnail"

    const/4 v4, 0x0

    sget-object v6, Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailArg$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    sget-object v8, Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailError$Serializer;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/dropbox/core/v2/DbxRawClientV2;->downloadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLjava/util/List;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/DbxDownloader;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1205
    :catch_0
    move-exception v0

    .line 1206
    new-instance v1, Lcom/dropbox/core/v2/files/ThumbnailErrorException;

    const-string/jumbo v2, "2/files/get_thumbnail"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ThumbnailError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ThumbnailErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ThumbnailError;)V

    throw v1
.end method

.method public getThumbnail(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxDownloader",
            "<",
            "Lcom/dropbox/core/v2/files/FileMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ThumbnailErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1231
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ThumbnailArg;-><init>(Ljava/lang/String;)V

    .line 1232
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getThumbnail(Lcom/dropbox/core/v2/files/ThumbnailArg;Ljava/util/List;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v0

    return-object v0
.end method

.method getThumbnailBatch(Lcom/dropbox/core/v2/files/GetThumbnailBatchArg;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetThumbnailBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1272
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/get_thumbnail_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/GetThumbnailBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetThumbnailBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/GetThumbnailBatchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetThumbnailBatchResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/GetThumbnailBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/GetThumbnailBatchError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    new-instance v1, Lcom/dropbox/core/v2/files/GetThumbnailBatchErrorException;

    const-string/jumbo v2, "2/files/get_thumbnail_batch"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/GetThumbnailBatchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/GetThumbnailBatchError;)V

    throw v1
.end method

.method public getThumbnailBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/ThumbnailArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/GetThumbnailBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/GetThumbnailBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1298
    new-instance v0, Lcom/dropbox/core/v2/files/GetThumbnailBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/GetThumbnailBatchArg;-><init>(Ljava/util/List;)V

    .line 1299
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->getThumbnailBatch(Lcom/dropbox/core/v2/files/GetThumbnailBatchArg;)Lcom/dropbox/core/v2/files/GetThumbnailBatchResult;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/GetThumbnailBuilder;
    .locals 2

    .prologue
    .line 1253
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;

    move-result-object v0

    .line 1254
    new-instance v1, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/GetThumbnailBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ThumbnailArg$Builder;)V

    return-object v1
.end method

.method listFolder(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1335
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/list_folder"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderErrorException;

    const-string/jumbo v2, "2/files/list_folder"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ListFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderError;)V

    throw v1
.end method

.method public listFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1384
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolder(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v0

    return-object v0
.end method

.method public listFolderBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderBuilder;
    .locals 2

    .prologue
    .line 1424
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    move-result-object v0

    .line 1425
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/ListFolderBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListFolderArg$Builder;)V

    return-object v1
.end method

.method listFolderContinue(Lcom/dropbox/core/v2/files/ListFolderContinueArg;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1441
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/list_folder/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;

    const-string/jumbo v2, "2/files/list_folder/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderContinueError;)V

    throw v1
.end method

.method public listFolderContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1469
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderContinueArg;-><init>(Ljava/lang/String;)V

    .line 1470
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderContinue(Lcom/dropbox/core/v2/files/ListFolderContinueArg;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v0

    return-object v0
.end method

.method listFolderGetLatestCursor(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1488
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/list_folder/get_latest_cursor"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderErrorException;

    const-string/jumbo v2, "2/files/list_folder/get_latest_cursor"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ListFolderErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderError;)V

    throw v1
.end method

.method public listFolderGetLatestCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1519
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderArg;-><init>(Ljava/lang/String;)V

    .line 1520
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderGetLatestCursor(Lcom/dropbox/core/v2/files/ListFolderArg;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorResult;

    move-result-object v0

    return-object v0
.end method

.method public listFolderGetLatestCursorBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorBuilder;
    .locals 2

    .prologue
    .line 1541
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListFolderArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderArg$Builder;

    move-result-object v0

    .line 1542
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/ListFolderGetLatestCursorBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListFolderArg$Builder;)V

    return-object v1
.end method

.method listFolderLongpoll(Lcom/dropbox/core/v2/files/ListFolderLongpollArg;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1562
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getNotify()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/list_folder/longpoll"

    const/4 v4, 0x1

    sget-object v5, Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    new-instance v1, Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;

    const-string/jumbo v2, "2/files/list_folder/longpoll"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderLongpollError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListFolderLongpollError;)V

    throw v1
.end method

.method public listFolderLongpoll(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1599
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;-><init>(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderLongpoll(Lcom/dropbox/core/v2/files/ListFolderLongpollArg;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;

    move-result-object v0

    return-object v0
.end method

.method public listFolderLongpoll(Ljava/lang/String;J)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListFolderLongpollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1630
    const-wide/16 v0, 0x1e

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    .line 1631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'timeout\' is smaller than 30L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1633
    :cond_0
    const-wide/16 v0, 0x1e0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 1634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Number \'timeout\' is larger than 480L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1636
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/ListFolderLongpollArg;-><init>(Ljava/lang/String;J)V

    .line 1637
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolderLongpoll(Lcom/dropbox/core/v2/files/ListFolderLongpollArg;)Lcom/dropbox/core/v2/files/ListFolderLongpollResult;

    move-result-object v0

    return-object v0
.end method

.method listRevisions(Lcom/dropbox/core/v2/files/ListRevisionsArg;)Lcom/dropbox/core/v2/files/ListRevisionsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListRevisionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1658
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/list_revisions"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListRevisionsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListRevisionsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    new-instance v1, Lcom/dropbox/core/v2/files/ListRevisionsErrorException;

    const-string/jumbo v2, "2/files/list_revisions"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/ListRevisionsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/ListRevisionsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/ListRevisionsError;)V

    throw v1
.end method

.method public listRevisions(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListRevisionsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/ListRevisionsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1693
    new-instance v0, Lcom/dropbox/core/v2/files/ListRevisionsArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg;-><init>(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listRevisions(Lcom/dropbox/core/v2/files/ListRevisionsArg;)Lcom/dropbox/core/v2/files/ListRevisionsResult;

    move-result-object v0

    return-object v0
.end method

.method public listRevisionsBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListRevisionsBuilder;
    .locals 2

    .prologue
    .line 1719
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ListRevisionsArg;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;

    move-result-object v0

    .line 1720
    new-instance v1, Lcom/dropbox/core/v2/files/ListRevisionsBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/ListRevisionsBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/ListRevisionsArg$Builder;)V

    return-object v1
.end method

.method move(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1736
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/move"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/Metadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/Metadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/Metadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1744
    :catch_0
    move-exception v0

    .line 1745
    new-instance v1, Lcom/dropbox/core/v2/files/RelocationErrorException;

    const-string/jumbo v2, "2/files/move"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/RelocationErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RelocationError;)V

    throw v1
.end method

.method public move(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1773
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->move(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/Metadata;

    move-result-object v0

    return-object v0
.end method

.method moveBatch(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1821
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/move_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchLaunch$Serializer;

    .line 1827
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 1821
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1829
    :catch_0
    move-exception v0

    .line 1830
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"move_batch\":"

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

.method public moveBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/RelocationBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1856
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;)V

    .line 1857
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->moveBatch(Lcom/dropbox/core/v2/files/RelocationBatchArg;)Lcom/dropbox/core/v2/files/RelocationBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method public moveBatchBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/MoveBatchBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)",
            "Lcom/dropbox/core/v2/files/MoveBatchBuilder;"
        }
    .end annotation

    .prologue
    .line 1878
    invoke-static {p1}, Lcom/dropbox/core/v2/files/RelocationBatchArg;->newBuilder(Ljava/util/List;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;

    move-result-object v0

    .line 1879
    new-instance v1, Lcom/dropbox/core/v2/files/MoveBatchBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/MoveBatchBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;)V

    return-object v1
.end method

.method moveBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1896
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/move_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationBatchJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1904
    :catch_0
    move-exception v0

    .line 1905
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/files/move_batch/check"

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

.method public moveBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1922
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->moveBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/RelocationBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public moveBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/MoveBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1799
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    move-result-object v0

    .line 1800
    new-instance v1, Lcom/dropbox/core/v2/files/MoveBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/MoveBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V

    return-object v1
.end method

.method moveV2(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/RelocationResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1937
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/move_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RelocationArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/RelocationResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/RelocationError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RelocationError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1945
    :catch_0
    move-exception v0

    .line 1946
    new-instance v1, Lcom/dropbox/core/v2/files/RelocationErrorException;

    const-string/jumbo v2, "2/files/move_v2"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/RelocationErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RelocationError;)V

    throw v1
.end method

.method public moveV2(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RelocationErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 1968
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->moveV2(Lcom/dropbox/core/v2/files/RelocationArg;)Lcom/dropbox/core/v2/files/RelocationResult;

    move-result-object v0

    return-object v0
.end method

.method public moveV2Builder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/MoveV2Builder;
    .locals 2

    .prologue
    .line 1990
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/RelocationArg;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationArg$Builder;

    move-result-object v0

    .line 1991
    new-instance v1, Lcom/dropbox/core/v2/files/MoveV2Builder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/MoveV2Builder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/RelocationArg$Builder;)V

    return-object v1
.end method

.method permanentlyDelete(Lcom/dropbox/core/v2/files/DeleteArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2006
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/permanently_delete"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/DeleteArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteArg$Serializer;

    .line 2011
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/files/DeleteError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteError$Serializer;

    move-object v3, p1

    .line 2006
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    return-void

    .line 2014
    :catch_0
    move-exception v0

    .line 2015
    new-instance v1, Lcom/dropbox/core/v2/files/DeleteErrorException;

    const-string/jumbo v2, "2/files/permanently_delete"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/DeleteError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/DeleteErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/DeleteError;)V

    throw v1
.end method

.method public permanentlyDelete(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/DeleteErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2032
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/DeleteArg;-><init>(Ljava/lang/String;)V

    .line 2033
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->permanentlyDelete(Lcom/dropbox/core/v2/files/DeleteArg;)V

    .line 2034
    return-void
.end method

.method propertiesAdd(Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2045
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/properties/add"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg$Serializer;

    .line 2050
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/AddPropertiesError$Serializer;

    move-object v3, p1

    .line 2045
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    return-void

    .line 2053
    :catch_0
    move-exception v0

    .line 2054
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;

    const-string/jumbo v2, "2/files/properties/add"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/AddPropertiesError;)V

    throw v1
.end method

.method public propertiesAdd(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/AddPropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2074
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2075
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->propertiesAdd(Lcom/dropbox/core/v2/fileproperties/AddPropertiesArg;)V

    .line 2076
    return-void
.end method

.method propertiesOverwrite(Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2087
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/properties/overwrite"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg$Serializer;

    .line 2092
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError$Serializer;

    move-object v3, p1

    .line 2087
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    return-void

    .line 2095
    :catch_0
    move-exception v0

    .line 2096
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;

    const-string/jumbo v2, "2/files/properties/overwrite"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupError;)V

    throw v1
.end method

.method public propertiesOverwrite(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroup;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/InvalidPropertyGroupErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2116
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2117
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->propertiesOverwrite(Lcom/dropbox/core/v2/fileproperties/OverwritePropertyGroupArg;)V

    .line 2118
    return-void
.end method

.method propertiesRemove(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2129
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/properties/remove"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg$Serializer;

    .line 2134
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError$Serializer;

    move-object v3, p1

    .line 2129
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    return-void

    .line 2137
    :catch_0
    move-exception v0

    .line 2138
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;

    const-string/jumbo v2, "2/files/properties/remove"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/RemovePropertiesError;)V

    throw v1
.end method

.method public propertiesRemove(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/RemovePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2160
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2161
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->propertiesRemove(Lcom/dropbox/core/v2/fileproperties/RemovePropertiesArg;)V

    .line 2162
    return-void
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
    .line 2173
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/properties/template/get"

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

    .line 2181
    :catch_0
    move-exception v0

    .line 2182
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    const-string/jumbo v2, "2/files/properties/template/get"

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
    .line 2200
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;-><init>(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->propertiesTemplateGet(Lcom/dropbox/core/v2/fileproperties/GetTemplateArg;)Lcom/dropbox/core/v2/fileproperties/GetTemplateResult;

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
    .line 2215
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/properties/template/list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2219
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/ListTemplateResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/TemplateError$Serializer;

    .line 2215
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/ListTemplateResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2223
    :catch_0
    move-exception v0

    .line 2224
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/TemplateErrorException;

    const-string/jumbo v2, "2/files/properties/template/list"

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

.method propertiesUpdate(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2237
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/properties/update"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg$Serializer;

    .line 2242
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError$Serializer;

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
    new-instance v1, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;

    const-string/jumbo v2, "2/files/properties/update"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesError;)V

    throw v1
.end method

.method public propertiesUpdate(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertyGroupUpdate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2265
    new-instance v0, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 2266
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->propertiesUpdate(Lcom/dropbox/core/v2/fileproperties/UpdatePropertiesArg;)V

    .line 2267
    return-void
.end method

.method restore(Lcom/dropbox/core/v2/files/RestoreArg;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RestoreErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2279
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/restore"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/RestoreArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RestoreArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/FileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileMetadata$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RestoreError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/FileMetadata;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2287
    :catch_0
    move-exception v0

    .line 2288
    new-instance v1, Lcom/dropbox/core/v2/files/RestoreErrorException;

    const-string/jumbo v2, "2/files/restore"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/RestoreErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/RestoreError;)V

    throw v1
.end method

.method public restore(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/RestoreErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2304
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/RestoreArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->restore(Lcom/dropbox/core/v2/files/RestoreArg;)Lcom/dropbox/core/v2/files/FileMetadata;

    move-result-object v0

    return-object v0
.end method

.method saveUrl(Lcom/dropbox/core/v2/files/SaveUrlArg;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveUrlErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2320
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/save_url"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/SaveUrlArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2328
    :catch_0
    move-exception v0

    .line 2329
    new-instance v1, Lcom/dropbox/core/v2/files/SaveUrlErrorException;

    const-string/jumbo v2, "2/files/save_url"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/SaveUrlErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SaveUrlError;)V

    throw v1
.end method

.method public saveUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SaveUrlErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2346
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/SaveUrlArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->saveUrl(Lcom/dropbox/core/v2/files/SaveUrlArg;)Lcom/dropbox/core/v2/files/SaveUrlResult;

    move-result-object v0

    return-object v0
.end method

.method saveUrlCheckJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2363
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/save_url/check_job_status"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2371
    :catch_0
    move-exception v0

    .line 2372
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/files/save_url/check_job_status"

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

.method public saveUrlCheckJobStatus(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2388
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 2389
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->saveUrlCheckJobStatus(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/SaveUrlJobStatus;

    move-result-object v0

    return-object v0
.end method

.method search(Lcom/dropbox/core/v2/files/SearchArg;)Lcom/dropbox/core/v2/files/SearchResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2403
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/search"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/SearchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/SearchResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/files/SearchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SearchError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SearchResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2411
    :catch_0
    move-exception v0

    .line 2412
    new-instance v1, Lcom/dropbox/core/v2/files/SearchErrorException;

    const-string/jumbo v2, "2/files/search"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/SearchError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/files/SearchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/files/SearchError;)V

    throw v1
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/files/SearchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2435
    new-instance v0, Lcom/dropbox/core/v2/files/SearchArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/SearchArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->search(Lcom/dropbox/core/v2/files/SearchArg;)Lcom/dropbox/core/v2/files/SearchResult;

    move-result-object v0

    return-object v0
.end method

.method public searchBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchBuilder;
    .locals 2

    .prologue
    .line 2458
    invoke-static {p1, p2}, Lcom/dropbox/core/v2/files/SearchArg;->newBuilder(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SearchArg$Builder;

    move-result-object v0

    .line 2459
    new-instance v1, Lcom/dropbox/core/v2/files/SearchBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/SearchBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/SearchArg$Builder;)V

    return-object v1
.end method

.method upload(Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/upload"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/CommitInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CommitInfo$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v0

    .line 2480
    new-instance v1, Lcom/dropbox/core/v2/files/UploadUploader;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/v2/files/UploadUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v1
.end method

.method public upload(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2501
    new-instance v0, Lcom/dropbox/core/v2/files/CommitInfo;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/CommitInfo;-><init>(Ljava/lang/String;)V

    .line 2502
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->upload(Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadUploader;

    move-result-object v0

    return-object v0
.end method

.method public uploadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadBuilder;
    .locals 2

    .prologue
    .line 2521
    invoke-static {p1}, Lcom/dropbox/core/v2/files/CommitInfo;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CommitInfo$Builder;

    move-result-object v0

    .line 2522
    new-instance v1, Lcom/dropbox/core/v2/files/UploadBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/files/UploadBuilder;-><init>(Lcom/dropbox/core/v2/files/DbxUserFilesRequests;Lcom/dropbox/core/v2/files/CommitInfo$Builder;)V

    return-object v1
.end method

.method uploadSessionAppend(Lcom/dropbox/core/v2/files/UploadSessionCursor;)Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/upload_session/append"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionCursor$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionCursor$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v0

    .line 2542
    new-instance v1, Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v1
.end method

.method public uploadSessionAppend(Ljava/lang/String;J)Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2567
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionCursor;

    invoke-direct {v0, p1, p2, p3}, Lcom/dropbox/core/v2/files/UploadSessionCursor;-><init>(Ljava/lang/String;J)V

    .line 2568
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionAppend(Lcom/dropbox/core/v2/files/UploadSessionCursor;)Lcom/dropbox/core/v2/files/UploadSessionAppendUploader;

    move-result-object v0

    return-object v0
.end method

.method uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionAppendArg;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/upload_session/append_v2"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionAppendArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionAppendArg$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v0

    .line 2589
    new-instance v1, Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v1
.end method

.method public uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionCursor;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2609
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;)V

    .line 2610
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionAppendArg;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;

    move-result-object v0

    return-object v0
.end method

.method public uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionCursor;Z)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2631
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionAppendArg;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Z)V

    .line 2632
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionAppendV2(Lcom/dropbox/core/v2/files/UploadSessionAppendArg;)Lcom/dropbox/core/v2/files/UploadSessionAppendV2Uploader;

    move-result-object v0

    return-object v0
.end method

.method public uploadSessionFinish(Lcom/dropbox/core/v2/files/UploadSessionCursor;Lcom/dropbox/core/v2/files/CommitInfo;)Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2670
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;

    invoke-direct {v0, p1, p2}, Lcom/dropbox/core/v2/files/UploadSessionFinishArg;-><init>(Lcom/dropbox/core/v2/files/UploadSessionCursor;Lcom/dropbox/core/v2/files/CommitInfo;)V

    .line 2671
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionFinish(Lcom/dropbox/core/v2/files/UploadSessionFinishArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;

    move-result-object v0

    return-object v0
.end method

.method uploadSessionFinish(Lcom/dropbox/core/v2/files/UploadSessionFinishArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2647
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/upload_session/finish"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionFinishArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishArg$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v0

    .line 2652
    new-instance v1, Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/v2/files/UploadSessionFinishUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v1
.end method

.method uploadSessionFinishBatch(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2708
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/upload_session/finish_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch$Serializer;

    .line 2714
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    move-object v3, p1

    .line 2708
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2716
    :catch_0
    move-exception v0

    .line 2717
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"upload_session/finish_batch\":"

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

.method public uploadSessionFinishBatch(Ljava/util/List;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/UploadSessionFinishArg;",
            ">;)",
            "Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2756
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg;-><init>(Ljava/util/List;)V

    .line 2757
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionFinishBatch(Lcom/dropbox/core/v2/files/UploadSessionFinishBatchArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method uploadSessionFinishBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2774
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/upload_session/finish_batch/check"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/async/PollArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/async/PollError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/async/PollError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2782
    :catch_0
    move-exception v0

    .line 2783
    new-instance v1, Lcom/dropbox/core/v2/async/PollErrorException;

    const-string/jumbo v2, "2/files/upload_session/finish_batch/check"

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

.method public uploadSessionFinishBatchCheck(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/async/PollErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2800
    new-instance v0, Lcom/dropbox/core/v2/async/PollArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/async/PollArg;-><init>(Ljava/lang/String;)V

    .line 2801
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionFinishBatchCheck(Lcom/dropbox/core/v2/async/PollArg;)Lcom/dropbox/core/v2/files/UploadSessionFinishBatchJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public uploadSessionStart()Lcom/dropbox/core/v2/files/UploadSessionStartUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2862
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionStartArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/UploadSessionStartArg;-><init>()V

    .line 2863
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionStart(Lcom/dropbox/core/v2/files/UploadSessionStartArg;)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;

    move-result-object v0

    return-object v0
.end method

.method uploadSessionStart(Lcom/dropbox/core/v2/files/UploadSessionStartArg;)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/files/upload_session/start"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/files/UploadSessionStartArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionStartArg$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/core/v2/DbxRawClientV2;->uploadStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/http/HttpRequestor$Uploader;

    move-result-object v0

    .line 2835
    new-instance v1, Lcom/dropbox/core/v2/files/UploadSessionStartUploader;

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/DbxRawClientV2;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/v2/files/UploadSessionStartUploader;-><init>(Lcom/dropbox/core/http/HttpRequestor$Uploader;Ljava/lang/String;)V

    return-object v1
.end method

.method public uploadSessionStart(Z)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 2892
    new-instance v0, Lcom/dropbox/core/v2/files/UploadSessionStartArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/files/UploadSessionStartArg;-><init>(Z)V

    .line 2893
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadSessionStart(Lcom/dropbox/core/v2/files/UploadSessionStartArg;)Lcom/dropbox/core/v2/files/UploadSessionStartUploader;

    move-result-object v0

    return-object v0
.end method
