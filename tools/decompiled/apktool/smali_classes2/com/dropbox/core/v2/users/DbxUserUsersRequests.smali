.class public Lcom/dropbox/core/v2/users/DbxUserUsersRequests;
.super Ljava/lang/Object;
.source "DbxUserUsersRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 26
    return-void
.end method


# virtual methods
.method getAccount(Lcom/dropbox/core/v2/users/GetAccountArg;)Lcom/dropbox/core/v2/users/BasicAccount;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/users/GetAccountErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/users/get_account"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/users/GetAccountArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/BasicAccount$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/users/GetAccountError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/users/BasicAccount;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Lcom/dropbox/core/v2/users/GetAccountErrorException;

    const-string/jumbo v2, "2/users/get_account"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/users/GetAccountError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/users/GetAccountErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/users/GetAccountError;)V

    throw v1
.end method

.method public getAccount(Ljava/lang/String;)Lcom/dropbox/core/v2/users/BasicAccount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/users/GetAccountErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/users/GetAccountArg;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->getAccount(Lcom/dropbox/core/v2/users/GetAccountArg;)Lcom/dropbox/core/v2/users/BasicAccount;

    move-result-object v0

    return-object v0
.end method

.method getAccountBatch(Lcom/dropbox/core/v2/users/GetAccountBatchArg;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/users/GetAccountBatchArg;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/users/BasicAccount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/users/GetAccountBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/users/get_account_batch"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchArg$Serializer;

    sget-object v3, Lcom/dropbox/core/v2/users/BasicAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/BasicAccount$Serializer;

    .line 85
    invoke-static {v3}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/GetAccountBatchError$Serializer;

    move-object v3, p1

    .line 80
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Lcom/dropbox/core/v2/users/GetAccountBatchErrorException;

    const-string/jumbo v2, "2/users/get_account_batch"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/users/GetAccountBatchError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/users/GetAccountBatchErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/users/GetAccountBatchError;)V

    throw v1
.end method

.method public getAccountBatch(Ljava/util/List;)Ljava/util/List;
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
            "Lcom/dropbox/core/v2/users/BasicAccount;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/users/GetAccountBatchErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/dropbox/core/v2/users/GetAccountBatchArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/users/GetAccountBatchArg;-><init>(Ljava/util/List;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->getAccountBatch(Lcom/dropbox/core/v2/users/GetAccountBatchArg;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()Lcom/dropbox/core/v2/users/FullAccount;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/users/get_current_account"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 124
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/users/FullAccount$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/FullAccount$Serializer;

    .line 126
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    .line 120
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/users/FullAccount;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"get_current_account\":"

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

.method public getSpaceUsage()Lcom/dropbox/core/v2/users/SpaceUsage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxApiException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/users/DbxUserUsersRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/users/get_space_usage"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 148
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    sget-object v6, Lcom/dropbox/core/v2/users/SpaceUsage$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/SpaceUsage$Serializer;

    .line 150
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->void_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    .line 144
    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/users/SpaceUsage;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Lcom/dropbox/core/DbxApiException;

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected error response for \"get_space_usage\":"

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
