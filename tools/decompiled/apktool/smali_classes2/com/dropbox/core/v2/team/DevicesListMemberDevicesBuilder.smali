.class public Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;
.super Ljava/lang/Object;
.source "DevicesListMemberDevicesBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_client"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/team/ListMemberDevicesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListMemberDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->build()Lcom/dropbox/core/v2/team/ListMemberDevicesArg;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->devicesListMemberDevices(Lcom/dropbox/core/v2/team/ListMemberDevicesArg;)Lcom/dropbox/core/v2/team/ListMemberDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method public withIncludeDesktopClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->withIncludeDesktopClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    .line 66
    return-object p0
.end method

.method public withIncludeMobileClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->withIncludeMobileClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    .line 81
    return-object p0
.end method

.method public withIncludeWebSessions(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListMemberDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;->withIncludeWebSessions(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListMemberDevicesArg$Builder;

    .line 51
    return-object p0
.end method
