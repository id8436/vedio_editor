.class public Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;
.super Ljava/lang/Object;
.source "DbxTeamTeamLogRequests.java"


# instance fields
.field private final client:Lcom/dropbox/core/v2/DbxRawClientV2;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/DbxRawClientV2;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    .line 24
    return-void
.end method


# virtual methods
.method public getEvents()Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/teamlog/GetTeamEventsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;->getEvents(Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;

    move-result-object v0

    return-object v0
.end method

.method getEvents(Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/teamlog/GetTeamEventsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team_log/get_events"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/teamlog/GetTeamEventsError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GetTeamEventsError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    new-instance v1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsErrorException;

    const-string/jumbo v2, "2/team_log/get_events"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/teamlog/GetTeamEventsError;)V

    throw v1
.end method

.method public getEventsBuilder()Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;->newBuilder()Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;-><init>(Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;)V

    return-object v1
.end method

.method getEventsContinue(Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueArg;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;->client:Lcom/dropbox/core/v2/DbxRawClientV2;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/DbxRawClientV2;->getHost()Lcom/dropbox/core/DbxHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/DbxHost;->getApi()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2/team_log/get_events/continue"

    const/4 v4, 0x0

    sget-object v5, Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueArg$Serializer;

    sget-object v6, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult$Serializer;

    sget-object v7, Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueError$Serializer;

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dropbox/core/v2/DbxRawClientV2;->rpcStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZLcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/stone/StoneSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;
    :try_end_0
    .catch Lcom/dropbox/core/DbxWrappedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueErrorException;

    const-string/jumbo v2, "2/team_log/get_events/continue"

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dropbox/core/DbxWrappedException;->getErrorValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueError;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueError;)V

    throw v1
.end method

.method public getEventsContinue(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v0, Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueArg;

    invoke-direct {v0, p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueArg;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;->getEventsContinue(Lcom/dropbox/core/v2/teamlog/GetTeamEventsContinueArg;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;

    move-result-object v0

    return-object v0
.end method
