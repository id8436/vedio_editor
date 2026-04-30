.class public Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
.super Ljava/lang/Object;
.source "GetEventsBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->_client:Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;

    .line 34
    if-nez p2, :cond_1

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->_builder:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    .line 38
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/teamlog/GetTeamEventsErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->_builder:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->build()Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->_client:Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/teamlog/DbxTeamTeamLogRequests;->getEvents(Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsResult;

    move-result-object v0

    return-object v0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->_builder:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    .line 73
    return-object p0
.end method

.method public withCategory(Lcom/dropbox/core/v2/teamlog/EventCategory;)Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->_builder:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->withCategory(Lcom/dropbox/core/v2/teamlog/EventCategory;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    .line 97
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->_builder:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    .line 56
    return-object p0
.end method

.method public withTime(Lcom/dropbox/core/v2/teamcommon/TimeRange;)Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GetEventsBuilder;->_builder:Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;->withTime(Lcom/dropbox/core/v2/teamcommon/TimeRange;)Lcom/dropbox/core/v2/teamlog/GetTeamEventsArg$Builder;

    .line 85
    return-object p0
.end method
