.class public Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;
.super Ljava/lang/Object;
.source "DevicesListTeamDevicesBuilder.java"


# instance fields
.field private final _builder:Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

.field private final _client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;)V
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
    iput-object p1, p0, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    .line 33
    if-nez p2, :cond_1

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "_builder"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    .line 37
    return-void
.end method


# virtual methods
.method public start()Lcom/dropbox/core/v2/team/ListTeamDevicesResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/v2/team/ListTeamDevicesErrorException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    invoke-virtual {v0}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->build()Lcom/dropbox/core/v2/team/ListTeamDevicesArg;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;->_client:Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;

    invoke-virtual {v1, v0}, Lcom/dropbox/core/v2/team/DbxTeamTeamRequests;->devicesListTeamDevices(Lcom/dropbox/core/v2/team/ListTeamDevicesArg;)Lcom/dropbox/core/v2/team/ListTeamDevicesResult;

    move-result-object v0

    return-object v0
.end method

.method public withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->withCursor(Ljava/lang/String;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    .line 52
    return-object p0
.end method

.method public withIncludeDesktopClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->withIncludeDesktopClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    .line 82
    return-object p0
.end method

.method public withIncludeMobileClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->withIncludeMobileClients(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    .line 97
    return-object p0
.end method

.method public withIncludeWebSessions(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/team/DevicesListTeamDevicesBuilder;->_builder:Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;->withIncludeWebSessions(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/ListTeamDevicesArg$Builder;

    .line 67
    return-object p0
.end method
